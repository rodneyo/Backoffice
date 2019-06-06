### Systemd Usage

> This systemd script runs is responsible running jobs that have added to the proc_rerun_jobs table by the 
Backoffice BatchRunner.php script.  Specifics are as follows:

| Function | Value |
|----------|-------|
| Run as user | vincodo|
| Starting | systemctl start proc-rerun.service |
| Stopping | systemtl stop proc-rerun.service |
| Enable at boot | systemctl enable proc-rerun.service |
| Install location | /etc/systemd/system/proc-rerun.service |
| Log files | /var/log/vincodo/proc-rerun.log |
| Conf file location | /etc/vincodo/daemon_conf |

##### Use journalctl to get more info or when things go wrong
* journalctl -xe
    * displays the end of the journal
* journalclt -u file-mover.service
    * will display the journal filtered by the service name given
