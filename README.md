# Docker config (full Apache / MariaDB / PHP stack)
Build a full stack DAMP (Docker / Apache / MariaDB / PHP) using docker and docker-compose.

## Features
### Apache container (HTTPd)
A container based on CentOS 7:
* Used [HTTPd 2.4.12 from SCL](https://www.softwarecollections.org/en/scls/rhscl/httpd24/) instead HTTPd 2.4.8 avalaible by default in CentOS repository.
* Share your ~/public_http folder as document root.
* Share ./conf/httpd24/vhost.d folder to define your vhost.d.
* Share ./log/httpd24 to log.

### PHP (PHP-FPM)
A container based on CentOS 7:
* Used [PHP 5.6 from SCL](https://www.softwarecollections.org/en/scls/rhscl/rh-php56/).
* Share ./conf/php56/90-custom.ini folder to define your custumisation.
* Share ./log/php56 to log.

## SELinux consideration
* Allow access to Docker at your folders:
~~~bash
chcon -Rt svirt_sandbox_file_t ./conf
chcon -Rt svirt_sandbox_file_t ./data
chcon -Rt svirt_sandbox_file_t ./log
~~~
* Allow access to Docker at your public_html:
~~~bash
semanage fcontext -a -t svirt_sandbox_file_t '/home/(.*/)?public_html(/.*)?'
~~~