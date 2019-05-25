
FROM ubuntu

ENV LANG C.UTF-8
RUN apt-get update && apt-get install -y software-properties-common iputils-ping net-tools iputils-arping
RUN add-apt-repository ppa:ondrej/php
#RUN apt-get update && apt-get install -y nginx php7.2 php7.2-fpm  php7.2-json php7.2-soap php7.2-curl php7.2-cli php7.2-ctype php7.2-xml php7.2-zip php7.2-mbstring php7.2-xdebug php7.2-redis vim rsyslog bash-completion jq less curl phpunit tmux redis-server
RUN apt-get update && apt-get install -y nginx mc nano vim \
  php7.2 \
  php7.2-fpm  \
  php7.2-json \
  php7.2-soap \
  php7.2-curl \
  php7.2-cli \
  php7.2-ctype \
  php7.2-xml \
  php7.2-zip \
  php7.2-mbstring \
  php7.2-xdebug \
  php7.2-redis \
  php7.2-apcu \
  php7.2-mysql \
  rsyslog \
  bash-completion \
  jq \
  less \
  curl \
  phpunit \
  tmux \
  redis-server

ADD nginx/default /etc/nginx/sites-available/

# Add Xdebug configuration
#ADD php-fpm/xdebug.ini /etc/php/7.2/mods-available/
#RUN echo "zend_extension=$(find /usr/lib/php/ -name xdebug.so | sort -n | tail -n 1)" | cat - /etc/php/7.2/mods-available/xdebug.ini > temp && mv temp /etc/php/7.2/mods-available/xdebug.ini

ADD startup.sh /home/
ADD root/bashrc /root/
ADD root/view_log.sh /usr/local/bin/

RUN chmod 777 /home/startup.sh
RUN chmod 777 /usr/local/bin/view_log.sh

RUN mv /usr/share/nginx/html /usr/share/nginx/www

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer


EXPOSE 80
EXPOSE 9000
EXPOSE 3306
# default xdebug remote debug port, see php-fpm/xdebug.ini
EXPOSE 9002

CMD ["/bin/bash", "/home/startup.sh"]
