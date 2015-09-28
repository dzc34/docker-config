# PHP-FPM.
FROM centos:7
MAINTAINER Guillaume Kulakowski <guillaume@kulakowski.fr>

LABEL Description="CentOS PHP-FPM 5.6 from SCL"
LABEL Vendor="Guillaume Kulakowski"
LABEL Version=5.6-1.0

EXPOSE 9000

# Install RH-PHP56 collection from SCL.
RUN yum localinstall -y https://www.softwarecollections.org/en/scls/rhscl/rh-php56/epel-7-x86_64/download/rhscl-rh-php56-epel-7-x86_64.noarch.rpm \
  https://www.softwarecollections.org/en/scls/remi/php56more/epel-7-x86_64/download/remi-php56more-epel-7-x86_64.noarch.rpm \
  https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# Install PHP 5.6 from SCL.
RUN yum update -y && yum install -y rh-php56-php-bcmath \
    rh-php56-php-cli \
    rh-php56-php-common \
    rh-php56-php-dbg \
    rh-php56-php-fpm \
    rh-php56-php-gd \
    rh-php56-php-intl \
    rh-php56-php-ldap \
    rh-php56-php-mbstring \
    rh-php56-php-mysqlnd \
    rh-php56-php-opcache \
    rh-php56-php-pdo \
    rh-php56-php-pear \
    rh-php56-php-pecl-jsonc \
    rh-php56-php-pecl-memcache \
    rh-php56-php-pecl-mongo \
    rh-php56-php-pecl-xdebug \
    rh-php56-php-pgsql \
    rh-php56-php-process \
    rh-php56-php-pspell \
    rh-php56-php-recode \
    rh-php56-php-soap \
    rh-php56-php-xml \
    rh-php56-php-xmlrpc \
    more-php56-php-pecl-apcu \
    more-php56-php-pecl-memcached \
    more-php56-php-pecl-redis \
    more-php56-php-pecl-solr2 \
    more-php56-php-pecl-sphinx \
    more-php56-php-twig \
    more-php56-php-pecl-varnish \
    more-php56-php-pecl-yaml
RUN yum clean all

# Symlink.
RUN ln -s /etc/opt/rh/rh-php56/php.d/ /etc
RUN ln -s /etc/opt/rh/rh-php56/php-fpm.d/ /etc
RUN ln -s /var/opt/rh/rh-php56/log/php-fpm/ /var/log
RUN mkdir -p /var/www/html
RUN sed -i "s/listen = 127.0.0.1:9000/listen = [::]:9000/g" /etc/php-fpm.d/www.conf
RUN sed -i "s/listen.allowed_clients = /;listen.allowed_clients = /g" /etc/php-fpm.d/www.conf

# My configuration.
COPY php.d /etc/php.d

CMD ["scl", "enable", "rh-php56", "php-fpm -F"]