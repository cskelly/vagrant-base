#!/usr/bin/env bash

apt-get update
apt-get install -y apache2

apt-get install -y php5 libapache2-mod-php5

debconf-set-selections <<< 'mysql-server-5.1 mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server-5.1 mysql-server/root_password_again password root'
apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql

/etc/init.d/apache2 reload

rm -rf /var/www
ln -fs /vagrant /var/www

# mysql -u root -proot -e 'CREATE DATABASE databaseName'
# mysql -u root -proot lightrecoil < /vagrant/deploy/v1.0.sql
