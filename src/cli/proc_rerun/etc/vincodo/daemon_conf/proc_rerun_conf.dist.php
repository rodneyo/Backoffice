<?php
##############################
# Settings needed for the
# proc rerun job
# Install: /etc/vincodo/daemon_conf
##############################
$dbArray = [
    'db' => '--DATABASE--',
    'user' => '--DB_USER--',
    'password' => '--DB_PASSWORD--',
    'jobs' => 'proc_rerun_jobs', // rerun jobs db table
    'log' => 'proc_rerun_log',
    'run_log_view' => 'latest_job_run_log'
];
