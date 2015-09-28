# CentOS HTTPd 2.4.12
HTTPd 2.4.12 image build with:
* [CentOS 7](https://hub.docker.com/_/centos/).
* [HTTPd 2.4.12 from Software Collections](https://www.softwarecollections.org/en/scls/rhscl/httpd24/) (SCL).
* Secure configuration.
* Deflate configuration.
* ETags configuration.
* Expires configuration.
* PHP-FPM handler toward _docker_php56fpm_1_.
* All vHost avalaible in _/etc/httpd/vhost.d_ (This directory can be shared with the host).