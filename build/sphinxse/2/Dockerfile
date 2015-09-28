# Apache
FROM centos:7
MAINTAINER Guillaume Kulakowski <guillaume@kulakowski.fr>

LABEL Description="Sphinx Search Engine 2"
LABEL Vendor="Guillaume Kulakowski"
LABEL Version=2-1.0

EXPOSE 9312

# Install EPEL.
RUN yum localinstall -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# Install Sphinx SE from EPEL.
RUN yum update -y && yum install -y sphinx
RUN yum clean all

# Symlink
#RUN ln -s /opt/rh/httpd24/root/etc/httpd/ /etc

# My configuration
#COPY conf.d /etc/httpd/conf.d
#RUN mkdir /etc/httpd/vhost.d
#RUN rm -f /etc/httpd/conf.d/welcome.conf

# Simple startup script to avoid some issues observed with container restart
#ADD run-httpd.sh /run-httpd.sh
#RUN chmod -v +x /run-httpd.sh

#CMD ["/run-httpd.sh"]