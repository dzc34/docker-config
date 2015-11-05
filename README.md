# Docker config (full Apache / MariaDB / PHP stack)
Build a full stack DAMP (Docker / Apache / MariaDB / PHP) using docker and docker-compose.

## Features
### Apache container
A container based on CentOS 7 and using [HTTPd 2.4.12 from SCL](https://www.softwarecollections.org/en/scls/rhscl/httpd24/): [llaumgui/centos7-scl-httpd24](https://hub.docker.com/r/llaumgui/centos7-scl-httpd24/):
* Share your ~/public_http folder as document root.
* Share ./volumes/conf/httpd24/vhost.d folder to define your vhost.d.
* Share ./volumes/log/httpd24 to log.

### PHP container
A container based on CentOS 7 using [PHP 5.6 from SCL](https://www.softwarecollections.org/en/scls/rhscl/rh-php56/):  [llaumgui/centos7-scl-php56](https://hub.docker.com/r/llaumgui/centos7-scl-php56/):
* Share ./volumes/conf/php56/90-custom.ini folder to define your custumisation.
* Share ./volumes/log/php56 to log.

### MariaDB container

### Memcached container

### Sphinx Search Engine container
## SELinux consideration
* Allow access to Docker at your folders:
~~~bash
chcon -Rt svirt_sandbox_file_t ./volumes
~~~
* Allow access to Docker at your public_html:
~~~bash
semanage fcontext -a -t svirt_sandbox_file_t '/home/(.*/)?public_html(/.*)?'
~~~