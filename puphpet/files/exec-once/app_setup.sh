#!/usr/bin/env bash

# setup settings config
SETTINGS_DIST_FILE='/var/www/backoffice/src/settings.local.dist'
SETTINGS_LOCAL_FILE='/var/www/backoffice/src/settings.local.php'

cp $SETTINGS_DIST_FILE $SETTINGS_LOCAL_FILE

#setup Queue Monitor
QUEUE_MONITOR_SUPERVISOR_DIST_FILE='/var/www/backoffice/src/cli/supervisord/QueueMonitor/queue_monitor_supervisord.local.conf.dist'
QUEUE_MONITOR_SUPERVISOR_FILE='/var/www/backoffice/src/cli/supervisord/QueueMonitor/queue_monitor_supervisord.local.conf'

cp $QUEUE_MONITOR_SUPERVISOR_DIST_FILE $QUEUE_MONITOR_SUPERVISOR_FILE

## Replaced config params necessary for app execution
sed -i  's/--SYSTEM_USER--/vincodo/' $QUEUE_MONITOR_SUPERVISOR_FILE
sed -i  's/--DB_USER--/dbuser/' $QUEUE_MONITOR_SUPERVISOR_FILE
sed -i 's/--DB_PASSWD--/123/' $QUEUE_MONITOR_SUPERVISOR_FILE
sed -i 's/--DEPLOYER_CURRENT--//g' $QUEUE_MONITOR_SUPERVISOR_FILE
sed -i  's/[^[:print:]]//g' $QUEUE_MONITOR_SUPERVISOR_FILE
ln -s /var/www/backoffice/src/cli/supervisord/QueueMonitor/queue_monitor_supervisord.local.conf /etc/supervisor.d/queue_monitor.conf

## let supervisord know about the new daemon
supervisorctl reread
supervisorctl update


# App log file location
mkdir /var/log/vincodo
chown -R vincodo:www-data /var/log/vincodo
chmod -R g+w /var/log/vincodo

