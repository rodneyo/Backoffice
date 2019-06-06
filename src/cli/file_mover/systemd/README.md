### Systemd Usage

> This systemd script runs is responsible for copying files configured in the "File Mover" feature in the
Backoffice web app.  Specifics are as follows:

| Function | Value |
|----------|-------|
| Run as user | vincodo|
| Starting | systemctl start file-mover.service |
| Stopping | systemtl stop file-mover.service |
| Enable at boot | systemctl enable file-mover.service |
| Install location | /etc/systemd/system/file-mover.service |
| Log files | /var/log/vincodo/file-mover.log |
| Conf file location | /etc/vincodo/daemon_conf |

##### Use journalctl to get more info or when things go wrong
* journalctl -xe
    * displays the end of the journal
* journalclt -u file-mover.service
    * will display the journal filtered by the service name given
