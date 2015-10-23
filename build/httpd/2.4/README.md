# CentOS HTTPd 2.4.12
An Apache 2.4 from [Software Collections](https://www.softwarecollections.org/en/scls/rhscl/httpd24/) build on [CentOS 7](https://hub.docker.com/_/centos/).

HTTPd 2.4.12 image build with:
* [CentOS 7](https://hub.docker.com/_/centos/).
* [HTTPd 2.4.12 from Software Collections](https://www.softwarecollections.org/en/scls/rhscl/httpd24/) (SCL).

With configuration:
* Secure.
* Deflate.
* ETags.
* Expires.
* All vHost avalaible in _/etc/httpd/vhost.d_ (This directory can be shared with the host).

Work also with
* PHP-FPM handler toward *llaumgui_centos7-scl-php56-fpm*.