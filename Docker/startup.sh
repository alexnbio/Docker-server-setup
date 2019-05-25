#!/bin/bash

service nginx start
service php7.2-fpm start
redis-server --daemonize yes
#service postfix start
/bin/bash
