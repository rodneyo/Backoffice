<?php
namespace Deployer;

require 'recipe/common.php';

// Project name
set('application', 'backoffice');
set('repository', 'git@gitlab.com:Vincodo/BackOffice.git');
set('shared_files', []);
set('shared_dirs', ['logs']);
set('writable_dirs', ['logs']);
set('http_user', 'www-data');
set('default_stage', 'stage');
set('keep_releases', 10);
set('env', [
    'SYSTEM_USER' => getenv('SYSTEM_USER'),
    'DB_USER' => getenv('DB_USER'),
    'DB_PASSWD' => getenv('DB_PASSWD')
]);


// Hosts

host('production')
    ->become('deployer')
    ->hostname('db.vincodo.com')
    ->user('deployer')
    ->port(22)
    ->set('branch', 'master')
    ->set('deploy_path', '/var/www/vincodo/backoffice-prod')
    ->stage('production');


host('stage')
    ->hostname('oliverandassociatesconsulting.com')
    ->user('deployer')
    ->configfile('~/.ssh/config')
    ->set('deploy_path', '/var/www/vincodo/backoffice')
    ->stage('stage');

// Tasks

/**
 * Activate local config file
 */
task('deploy:set_config', function() {
    cd('{{release_path}}/src');
    run('mv settings.local.dist settings.local.php');
    run('sed -i "s/--SYSTEM_USER--/$SYSTEM_USER/g" cli/supervisord/QueueMonitor/queue_monitor_supervisord.local.conf.dist');
    run('sed -i "s/--DB_USER--/$DB_USER/g" cli/supervisord/QueueMonitor/queue_monitor_supervisord.local.conf.dist');
    run('sed -i "s/--DB_PASSWD--/$DB_PASSWD/g" cli/supervisord/QueueMonitor/queue_monitor_supervisord.local.conf.dist');
    run('sed -i "s/--DEPLOYER_CURRENT--/current/g" cli/supervisord/QueueMonitor/queue_monitor_supervisord.local.conf.dist');
});

/**
 * Remove vagrant development provisioning files
 */
task('deploy:remove_devsetup', function() {
    cd('{{release_path}}');
    run('rm -rf puphpet');
    run('rm -f Vagrantfile');
    run('rm -f deploy.php');
    run('rm -f README.md');
});

/**
 * Restart php (stage - nginx php-fpm)
 */

desc('Restart PHP-FPM service');
task('php-fpm:restart', function () {
    // Get the php-fpm version currently running
    $phpService = run('systemctl list-units -l --type=service --state=running |grep php | awk \'{print $1 "\t"}\'');
    run("sudo /bin/systemctl restart {$phpService}");
})->onStage('stage');


/**
 * Update supervisor conf files
 */


desc('Re-read supervisor configs');
task('supervisord-jobs:update', function() {
    run('sudo cp {{release_path}}/src/cli/supervisord/QueueMonitor/queue_monitor_supervisord.local.conf.dist /etc/supervisor/conf.d/queue_monitor_supervisord.local.conf');
    run('sudo chmod 600 /etc/supervisor/conf.d/queue_monitor_supervisord.local.conf');
    run('sudo /usr/bin/supervisorctl reread');
    run('sudo /usr/bin/supervisorctl update');
});


/**
 * Run deployment
 */
after('deploy:symlink', 'supervisord-jobs:update');
after('success', 'php-fpm:restart');

desc('Deploying BackOffice');

task('deploy', [
    'deploy:prepare',
    'deploy:lock',
    'deploy:release',
    'deploy:update_code',
    'deploy:set_config',
    'deploy:remove_devsetup',
    'deploy:vendors',
    'deploy:clear_paths',
    'deploy:symlink',
    'deploy:unlock',
    'deploy:shared',
    'deploy:writable',
    'cleanup',
    'success'
]);

// [Optional] If deploy fails automatically unlock.
after('deploy:failed', 'deploy:unlock');

