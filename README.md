# Docker Wordpress Starter

This repo can be used to start a new Wordpress installation using Docker and Docker Compose. 

These configurations will let you handle the templates, plugins and uploads folder in order to allow any kind of backups or modifications that you intend to do from your host.

## Setup
In order to run these services, it is necessary to set a .env file with the following information:

```
$ cat .env
MYSQL_ROOT_PASSWORD=<mysql_root_password>
MYSQL_USER=<mysql_user>
MYSQL_PASSWORD=<mysql_user_password>
MYSQL_DATABASE=<wordpress_database_name>
```

## Run
### Linux
In order to start the containers in a Linux distro, just run the following command:
```
$ sudo bash start.sh
```

This script will stop any containers associated to this project `docker-compose` file and start again, detached and with a new build.

After starting all containers, it changes the folders permissions to `www-data:www-data` inside the Wordpress container.