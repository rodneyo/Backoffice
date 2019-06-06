# Vincodo Back Office 
> The Back Office is a PHP/slim3 framework application that is accessible to vincodo staff via basic authentication 
> implemented as middleware.  It uses Twig for templating and composer for managing PHP dependencies.  CSS is Twitter bootstrap 3
> with js and jquery.  Current the app provides two functions

1.  File Mover
    1.  Allows a user to specify file names and match patterns for files to be copied from one location to another
    2.  A time based scheduler is provided to all a user to select a time to copy the files
    3.  A php daemon runs in the background that will copy the files at the scheduled time
    4.  Starting and stopping file mover
    ```bash
        sudo service file_mover start|start
    ```
    
1.  Procedure Re-Runner
> Vincodo has many automated MySQL/PHP/Bash procedures that process data files from various vendors and APIs. 
> These procedures were originally designed to run in batch in crontab.  A need arose for staff to be able to 
> run the procedures at will.  Logging into the server via ssh was not practical.  The re-runner provides an interface
> that staff can utilize to run the jobs
    1. Any authorized staff can run a job.
    1. The job will queue and a php daemon will pick up the queued job and execute it as the priviledged user
    1. The jobs still run in nightly crontab under the vincodo user
    1.  Starting and stopping file mover
    ```bash
        sudo service proc_rerun start|start
    ```
    
1.  Batch Runner
> The Batch Runner was designed to be be installed in a cron job which could be run at a specified time.  BatchRunner
> takes two arguments settings path (--spath) and name of the job (--short-name).  BatchRunner will get the jobIds for each job
> to be run and inserts a log entry that the re-run daemon will pick up.  It ties the backoffice submissions with the automatic
> daily processing.


```bash
10 13 * * 0,1,2,3,4,5,6  /usr/bin/php /var/www/vincodo/backoffice/src/cli/cron/BatchRunner.php --spath=/home/vincodo/proc_rerun/proc_rerun_conf.local.php --short-name="facebook tradedesk yahoo"
```


## Deployment
[Deployer](http://deployer.org) is currently being utilized to deploy the app.  deploy.php in the root contains the dtails

Set up SSH agent forwarding for deployment

To start the SSH Agent, type the following into your local terminal session:

```bash
eval $(ssh-agent)
```
```bash
Agent pid 10891
```

```bash
ssh-add
```
your ssh key will be added

__SSH Config Setup__

Create a .ssh config

```bash
    Host [ local name for the host server ]
    Hostname [ server host name ]
    Port 22
    User [ user with priviledge to deploy ]
    IdentityFile ~/.ssh/id_rsa
```

```bash
dep deploy [stage|prod] --tag [tag name]
```
# Reference links for ssh config setup and deployment
1. [Digital Ocean](https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys)
1. [Deployer Example](https://github.com/oanhnn/deployer-example/blob/master/docs/enable-feature-ssh-forward-agent.md)

