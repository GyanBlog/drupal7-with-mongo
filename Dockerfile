FROM drupal:7.57-apache

RUN apt-get update; \
	apt-get install openssl libssl-dev libcurl4-openssl-dev -y; \
	pecl install mongodb; \
	echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/mongodb.ini \
