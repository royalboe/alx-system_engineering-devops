# 0x14. Mysql

## Description
This project sets up a MySQL primary-replica cluster on our own servers.

## To uninstall MySql
- sudo systemctl stop mysql 
- sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
- sudo apt autoremove
- sudo apt autoclean

## Table of contents
Files | Description
----- | -----------
[4-mysql_configuration_primary](./4-mysql_configuration_primary) | MySQL primary configuration
[4-mysql_configuration_replica](./4-mysql_configuration_replica) | MySQL replica configuration
[5-mysql_backup](./5-mysql_backup) | Bash script that generates a MySQL dump and creates a compressed archive out of it
