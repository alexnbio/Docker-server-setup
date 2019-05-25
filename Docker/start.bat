#!/bin/sh

docker build -t symfony_dev .

docker run ^
--detach ^
--name=test-mysql ^
--env="MYSQL_ROOT_PASSWORD=mypassword" ^
--volume=/D/CP/Docker/mysql/conf.d:/etc/mysql/conf.d ^
--volume=/D/CP/storage/mysql:/var/lib/mysql ^
mysql:5.7

docker run ^
--rm ^
--name custom_cont ^
--link test-mysql:mysql ^
-it ^
-v /D/CP/Projects/:/usr/share/nginx/www ^
-v /D/CP/log:/usr/share/nginx/www/symfony/var/log ^
-v /D/CP/nginx-logs:/var/log/nginx ^
-v /D/CP/tmp:/tmp ^
-p 8088:80 ^
symfony_dev 
