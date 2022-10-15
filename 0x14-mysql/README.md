# 0x14. Mysql

## Description
This project sets up a MySQL primary-replica cluster on our own servers.

## To Install MySql
- Get the key from `https://dev.mysql.com/doc/refman/5.7/en/checking-gpg-signature.html`
- save it in a file and name the file signature.key
- `sudo apt-key add signature.key`
- Add the apt repo :- `sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'`
- Update app :- `sudo apt-get update`
- Check for the versions available :- `sudo apt-cache policy mysql-server`
- Install version 5.7 :- `sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*`

## To uninstall MySql
- `sudo systemctl stop mysql`
- `sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*`
- `sudo apt autoremove`
- `sudo apt autoclean`

## Table of contents
Files | Description
----- | -----------
[4-mysql_configuration_primary](./4-mysql_configuration_primary) | MySQL primary configuration
[4-mysql_configuration_replica](./4-mysql_configuration_replica) | MySQL replica configuration
[5-mysql_backup](./5-mysql_backup) | Bash script that generates a MySQL dump and creates a compressed archive out of it
