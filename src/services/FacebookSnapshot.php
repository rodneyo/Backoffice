<?php
/**
 * Date: 8/24/16
 * Time: 8:07 PM
 */

namespace Classes\services;

use Classes\models\FacebookSnapshotMapper;
use FacebookAds\Api;
use FacebookAds\Exception\Exception;
use FacebookAds\Object\AdAccount;
use FacebookAds\Object\Fields\AdCreativeFields;
use FacebookAds\Object\Fields\AdFields;
use FacebookAds\Object\Fields\AdSetFields;
use FacebookAds\Object\Fields\CampaignFields;
use \PDO;
use Monolog\Logger;

class FacebookSnapshot
{
    const VALUE_SEPARATOR = ':';

    protected $db;
    protected $logger;
    protected $appId;
    protected $appSecret;
    protected $accessToken;
    protected $snapshotCurrentTbl = 'fb_snapshot_current';
    protected $snapshotPostTbl = 'fb_snapshot_post';
    protected $snapshotArchiveTbl = 'fb_snapshot_archive';
    protected $currencyDivisor = 100;
    protected $queryLimit = 3000;
    protected $adCreativeQueryLimit = 1600;

    public $adAccount;
    public $ads;
    public $adSets;
    public $campaigns;
    public $adCreatives;

    public $campaignFields = [
        CampaignFields::ID,
        CampaignFields::NAME,
        CampaignFields::STATUS,
        CampaignFields::OBJECTIVE,
        CampaignFields::BUYING_TYPE,
        CampaignFields::SPEND_CAP,
        CampaignFields::ADLABELS
    ];

    public $adSetFields = [
        AdSetFields::ID,
        AdSetFields::CAMPAIGN_ID,
        AdSetFields::STATUS,
        AdSetFields::LIFETIME_IMPS,
        AdSetFields::NAME,
        AdSetFields::START_TIME,
        AdSetFields::END_TIME,
        AdSetFields::DAILY_BUDGET,
        AdSetFields::LIFETIME_BUDGET,
        AdSetFields::BILLING_EVENT,
        AdSetFields::BID_AMOUNT,
        AdSetFields::TARGETING,
        AdSetFields::OPTIMIZATION_GOAL,
        AdSetFields::IS_AUTOBID,
        AdSetFields::FREQUENCY_CAP
    ];

    public $adFields = [
        AdFields::ID,
        AdFields::ADSET_ID,
        AdFields::CAMPAIGN_ID,
        AdFields::NAME,
        AdFields::STATUS,
        AdFields::BID_AMOUNT,
        AdFields::CREATIVE,
        AdFields::BID_TYPE,
        AdFields::DISPLAY_SEQUENCE,
        AdFields::EFFECTIVE_STATUS,
        AdFields::ADLABELS,
        AdFields::ADSET,
        AdFields::CREATIVE,
        AdFields::TRACKING_SPECS
    ];

    public $adCreativeFields = [
        AdCreativeFields::ID,
        AdCreativeFields::PRODUCT_SET_ID,
        AdCreativeFields::TITLE,
        AdCreativeFields::BODY,
        AdCreativeFields::CALL_TO_ACTION,
        AdCreativeFields::CALL_TO_ACTION_TYPE,
        AdCreativeFields::NAME,
        AdCreativeFields::OBJECT_ID,
        AdCreativeFields::OBJECT_URL,
        AdCreativeFields::OBJECT_STORY_SPEC,
        AdCreativeFields::IMAGE_HASH,
        AdCreativeFields::IMAGE_URL,
        AdCreativeFields::LINK_URL,
        AdCreativeFields::IMAGE_HASH,
        AdCreativeFields::CALL_TO_ACTION,
        AdCreativeFields::CALL_TO_ACTION_TYPE,
        AdCreativeFields::PRODUCT_SET_ID,
        AdCreativeFields::INSTAGRAM_STORY_ID,
        AdCreativeFields::URL_TAGS
    ];

    public $carouselAdFields = [];

    public function __construct(PDO $db, Logger $snapShotLogger, FacebookSnapshotMapper $snapshotDbMapper)
    {
        $this->db          = $db;
        $this->logger = $snapShotLogger;
        $this->snapshotDbMapper = $snapshotDbMapper;
    }

    /**
     * Query the API and move data
     * post -> archive, current -> post, clear post, clear current, get current
     * @param $jobData
     */
    public function run($jobData)
    {
        $this->logger->addInfo("Starting Snap Shot...");
        $credentials = $this->getVendorCredentials([$jobData->fb_account_id]);

        $this->movePostToArchive($credentials['client_id']);
        $this->moveCurrentToPost($credentials['client_id']);
        $this->getCurrent($credentials);
    }

    /**
     * @param $clientId
     */
    protected function movePostToArchive($clientId)
    {
        $this->logger->addInfo('Moving post data to archive...');
        $this->snapshotDbMapper->move(
            $this->snapshotPostTbl,
            $this->snapshotArchiveTbl,
            $clientId
        );
        $this->snapshotDbMapper->truncate($this->snapshotPostTbl, $clientId);
        return;
    }

    /**
     * @param $clientId
     */
    protected function moveCurrentToPost($clientId)
    {
        $this->logger->addInfo('Moving current data to post...');
        $this->snapshotDbMapper->move(
            $this->snapshotCurrentTbl,
            $this->snapshotPostTbl,
            $clientId
        );
        $this->snapshotDbMapper->truncate($this->snapshotCurrentTbl, $clientId);
        return;
    }

    /**
     * @param $credentials
     *
     * @throws \Exception
     */
    protected function getCurrent($credentials)
    {
        $this->logger->addInfo('Getting current data...');
        try {
            Api::init($credentials['app_id'], $credentials['app_secret'], $credentials['access_token']);
            $this->adAccount = new AdAccount($credentials['api_client_account']);

            //Get all campaign data
            $this->campaigns = $this->adAccount->getCampaigns($this->campaignFields,  ['limit' => $this->queryLimit]);

            //Get all Ad Set data
            $this->adSets = $this->adAccount->getAdSets($this->adSetFields, ['limit' => $this->queryLimit]);

            // Getting all ads
            $this->ads = $this->adAccount->getAds($this->adFields, ['limit' => $this->queryLimit]);

            // Getting all ad creatives
            $this->adCreatives = $this->adAccount->getAdCreatives($this->adCreativeFields, ['limit' => $this->adCreativeQueryLimit]);

            foreach ($this->ads as $ad) {

                $adSetData      = $this->getAdSet($ad->adset_id);
                $campaignData   = $this->getCampaign($ad->campaign_id);
                $adCreativeData = $this->getAdCreatives($ad->creative['id']);

                $report[] = [
                    'id' => null,
                    'client_id' => $credentials['client_id'],
                    'insert_date' => date('Y-m-d H:i:s'),
                    'campaign_id' => $campaignData->id,
                    'campaign_name' => $campaignData->name,
                    'campaign_status' => $campaignData->status,
                    'campaign_objective' => $campaignData->objective,
                    'buying_type' => $campaignData->buying_type,
                    'campaign_spend_limit' => $campaignData->spend_cap / $this->currencyDivisor,
                    'tags' => $campaignData->adlabels,
                    'ad_set_id' => $adSetData->id,
                    'ad_set_run_status' => $adSetData->status,
                    'ad_set_lifetime_impressions' => $adSetData->lifetime_imps,
                    'ad_set_name' => $adSetData->name,
                    'ad_set_time_start' => $adSetData->start_time,
                    'ad_set_time_stop' => $adSetData->end_time,
                    'ad_set_daily_budget' => $adSetData->daily_budget / $this->currencyDivisor,
                    'ad_set_liftetime_budget' => $adSetData->lifetime_budget / $this->currencyDivisor,
                    'ad_set_schedule' => $adSetData->adset_schedule,
                    'frequency_cap' => $adSetData->frequency_cap,
                    'link_object_id' => $adCreativeData->object_id,
                    'optimized_conversion_tracking_pixels' => '',
                    'optimized_pixel_rule' => '',
                    'optimized_event' => '',
                    'link' => $this->combineData($adCreativeData->object_story_spec, 'link_data', 'link'),
                    'countries' => $this->combineData($adSetData->targeting, 'geo_locations', 'countries'),
                    'cities' => $this->combineData($adSetData->targeting, 'geo_locations', 'cities'),
                    'regions' => $this->combineData($adSetData->targeting, 'geo_locations', 'regions'),
                    'electoral_districts' => $this->combineData($adSetData->targeting, 'geo_locations', 'electoral_district'),
                    'zip' => $this->combineData($adSetData->targeting, 'geo_locations', 'zips'),
                    'addresses' => $this->combineData($adSetData->targeting, 'geo_locations', 'addresses'),
                    'geo_markets' => $this->combineData($adSetData->targeting, 'geo_locations', 'geo_markets'),
                    'location_types' => $this->combineData($adSetData->targeting, 'geo_locations', 'location_types'),
                    /**
                    'excluded_countries' => $this->combineData($adSetData->targeting, 'excluded_geo_locations', 'countries'),
                    'excluded_cities' => $this->combineData($adSetData->targeting, 'excluded_geo_locations', 'cities'),
                    'excluded_regions' => $this->combineData($adSetData->targeting, 'excluded_geo_locations', 'regions'),
                    'excluded_electoral_districts' => $this->combineData($adSetData->targeting, 'excluded_geo_locations', 'electoral_district'),
                    'excluded_zip' => $this->combineData($adSetData->targeting, 'excluded_geo_locations', 'zips'),
                    'excluded_addresses' => $this->combineData($adSetData->targeting, 'excluded_geo_locations', 'addresses'),
                    'excluded_geo_markets' => $this->combineData($adSetData->targeting, 'excluded_geo_locations', 'geo_markets'),
                     **/
                    'excluded_countries' => '',
                    'excluded_cities' => '',
                    'excluded_regions' => '',
                    'excluded_electoral_districts' => '',
                    'excluded_zip' => '',
                    'excluded_addresses' => '',
                    'excluded_geo_markets' => '',
                    'gender' => $this->combineData($adSetData->targeting, 'genders', null),
                    'age_min' => $adSetData->targeting['age_min'],
                    'age_max' => $adSetData->targeting['age_max'],
                    'custom_audiences' => $this->getCustomAudiences($adSetData->targeting, 'custom_audiences'),
                    'excluded_custom_audiences' => $this->getCustomAudiences($adSetData->targeting, 'excluded_custom_audiences'),
                    'flexible_inclusions' => $this->getFlexibleInclusions($adSetData->targeting),
                    'flexible_exclusions' => $this->getFlexibleExclusions($adSetData->targeting),
                    'publisher_platforms' => $this->combineData($adSetData->targeting, 'publisher_platforms', null),
                    'facebook_positions' => $this->combineData($adSetData->targeting, 'facebook_positions', null),
                    'device_platforms' => $this->combineData($adSetData->targeting, 'device_platforms', null),
                    'moms' => '',
                    'automatically_set_bid' => ($adSetData->is_autobid == 1 ? 'Yes' : 'No'),
                    'use_average_bid' => 'No',
                    'optimization_goal' => $adSetData->optimization_goal,
                    'billing_event' => $adSetData->billing_event,
                    'bid_amount' => $adSetData->bid_amount / $this->currencyDivisor,
                    'story_id' => $adCreativeData->instagram_story_id,
                    'ad_id' => $ad->id,
                    'ad_status' => $ad->status,
                    'ad_name' => $ad->name,
                    'title' => $adCreativeData->title,
                    'body' => $adCreativeData->body,
                    'link_description' => '',
                    'display_link' => '',
                    'conversion_tracking_pixels' => '',
                    'image_hash' => $adCreativeData->image_hash,
                    'image_url' => $adCreativeData->image_url,
                    'instagram_platform_image_hash' => '',
                    'instagram_platform_image_url' => '',
                    'creative_type' => '',
                    'url_tags' => $adCreativeData->url_tags,
                    'call_to_action' => $adCreativeData->call_to_action_type,
                    'product_1_link' => '',
                    'product_1_name' => '',
                    'product_1_description' => '',
                    'product_1_image_hash' => '',
                    'product_1_display_link' => '',
                    'product_2_link' => '',
                    'product_2_name' => '',
                    'product_2_description' => '',
                    'product_2_image_hash' => '',
                    'product_2_display_link' => '',
                    'product_3_link' => '',
                    'product_3_name' => '',
                    'product_3_description' => '',
                    'product_3_image_hash' => '',
                    'product_3_display_link' => '',
                    'product_4_link' => '',
                    'product_4_name' => '',
                    'product_4_description' => '',
                    'product_4_image_hash' => '',
                    'product_4_display_link' => '',
                    'product_5_link' => '',
                    'product_5_name' => '',
                    'product_5_description' => '',
                    'product_5_image_hash' => '',
                    'product_5_display_link' => '',
                    'education_status' => $this->getEducationStatus($adSetData->targeting),
                    'household_composition' => $this->getHouseholdComp($adSetData->targeting),
                    'life_events' => $this->getLifeEvents($adSetData->targeting),
                    'home_ownership' => $this->getHomeOwnership($adSetData->targeting),
                    'relationship' => $this->getRelationships($adSetData->targeting),
                    'family_statuses' => $this->getFamilyStatuses($adSetData->targeting)
                ];
            }

        } catch (Exception $e) {
            throw new \Exception($e->getMessage());
        }

        $this->writeReport($report);
    }

    protected function getAdSet($adSetId)
    {
        foreach ($this->adSets as $adSet) {
            if ($adSet->id == $adSetId) {
                return $adSet;
            }
        }
        return null;
    }

    protected function getCampaign($campaignId)
    {
        foreach ($this->campaigns as $campaign) {
            if ($campaign->id == $campaignId) {
                return $campaign;
            }
        }
        return null;
    }

    protected function getAdCreatives($adCreativeId)
    {
        foreach ($this->adCreatives as $adCreative) {
            if ($adCreative->id == $adCreativeId) {
                return $adCreative;
            }
        }
        return null;
    }

    protected function combineData($dataArray, $index, $dataField)
    {
        if (! is_array($dataArray)) {
            return;
        }

        if ($dataField === null) {
            if ( array_key_exists($index, $dataArray)) {
               return implode(self::VALUE_SEPARATOR, $dataArray[$index]);
            }
            return '';
        }

        if ( array_key_exists($index, $dataArray)) {
            if (array_key_exists($dataField, $dataArray[$index])) {

                switch ($dataField) {
                    case 'cities':
                        return $this->getCities($dataArray[$index][$dataField]);

                    case 'interests':
                        return $this->getFlexibleSpec($dataArray[$index][$dataField]);

                    case 'link':
                        return $dataArray[$index][$dataField];

                    default:
                        return implode(self::VALUE_SEPARATOR, $dataArray[$index][$dataField]);
                }
            }

            return '';
        }

        return '';
    }

    protected function getCities($cities)
    {
        $values = '';

        foreach ($cities as $cityData) {
            $values .= implode(self::VALUE_SEPARATOR, $cityData);
        }

        return $values;
    }

    protected function getFlexibleInclusions($targetingData)
    {
        $values = '';

        if (array_key_exists('flexible_spec', $targetingData)) {
            $values = json_encode($targetingData['flexible_spec']);
        }

        return $values;
    }

    protected function getFlexibleExclusions($targetingData)
    {
        $values = '';

        if (array_key_exists('exclusions', $targetingData)) {
            $values = json_encode($targetingData['exclusions']);
        }

        return $values;
    }

    protected function getCustomAudiences($targetingData, $index)
    {
        $value = '';

        if (empty($targetingData)) {
            return '';
        }

        if (! array_key_exists($index, $targetingData)) {
            return '';
        }

        foreach ($targetingData[$index] as $audience) {
            $value .= $audience['name'] . self::VALUE_SEPARATOR;
        }

        return trim($value, self::VALUE_SEPARATOR);
    }

    protected function getEducationStatus($targetingData)
    {
        $values = '';

        return $values;
    }

    protected function getHouseholdComp($targetingData)
    {
        $values = '';

        return $values;
    }

    protected function getLifeEvents($targetingData)
    {
        $values = '';

        return $values;
    }

    protected function getHomeOwnership($targetingData)
    {
        $values = '';

        return $values;
    }

    protected function getHomeRelationships($targetingData)
    {
        $values = '';

        return $values;
    }

    protected function getRelationships($targetingData)
    {
        $values = '';

        return $values;
    }

    protected function getFamilyStatuses($targetingData)
    {
        $values = '';

        return $values;
    }

    /**
     * Insert current data from the api
     * into the current table
     * @param $reportData
     *
     * @throws \Exception
     */
    protected function writeReport($reportData)
    {
        try {
            $this->logger->addInfo('Saving current data...');

            foreach($reportData as $reportRecord) {
                $this->snapshotDbMapper->save($this->snapshotCurrentTbl, $reportRecord);
            }

            $this->logger->addInfo(count($reportData) . ' Records saved');
            $this->logger->addInfo('Snaphot complete.');
            $this->logger->addInfo('job-ended');

        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }

    /**
     * @param array $accountId
     * @return array
     *
     * @todo:  break out into a model
     */
    protected function getVendorCredentials(array $accountId)
    {
        $credential =  [];

        try {
            $sql = "
                select 
                    cma.id, cma.fb_account_name, cma.api_account,
                    avd.type, avd.credential
                from client_marketing_api as cma
                join api_vendor_details as avd on avd.api_vendor_id = cma.api_vendor_id
                where cma.id = ?;
            ";

            $statement = $this->db->prepare($sql);
            $statement->execute($accountId);

            $records = $statement->fetchAll(PDO::FETCH_ASSOC);

        } catch (\PDOException $e) {
            $this->logger->addCritical($e->getMessage());
        }

        foreach ($records as $record) {
            $credential['client_id'] = $record['id'];
            $credential[$record['type']] = $record['credential'];
            $credential['api_client_account'] = $record['api_account'];
            $credential['fb_account_name'] = $record['fb_account_name'];
        }
        return $credential;
    }
}
