# PHP-FPM
FROM centos:7
MAINTAINER Guillaume Kulakowski <guillaume@kulakowski.fr>

LABEL Description="CentOS PHP-FPM 5.6 from SCL"
LABEL Vendor="Guillaume Kulakowski"
LABEL Version=5.6-1.0

EXPOSE 9000

# Install PHP 56 from SCL
RUN yum localinstall -y https://www.softwarecollections.org/en/scls/rhscl/rh-php56/epel-7-x86_64/download/rhscl-rh-php56-epel-7-x86_64.noarch.rpm

# Install PHP 5.6 from SCL
RUN yum update -y && yum install -y rh-php56-php-bcmath \
    rh-php56-php-cli \
    rh-php56-php-common \
    rh-php56-php-fpm \
    rh-php56-php-gd \
    rh-php56-php-intl \
    rh-php56-php-ldap \
    rh-php56-php-mbstring \
    rh-php56-php-mysqlnd \
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
    rh-php56-php-xmlrpc
RUN yum clean all

# symlink
RUN ln -s /etc/opt/rh/rh-php56/php.d/ /etc
RUN ln -s /etc/opt/rh/rh-php56/php-fpm.d/ /etc

# My configuration
COPY php.d /etc/php.d

CMD ["scl enable rh-php56 php-fpm"]