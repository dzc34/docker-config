# Docker config (full Apache / MariaDB / PHP stack)
Build a full stack DAMP (Docker / Apache / MariaDB / PHP) using docker and docker-compose.

## Features
### Apache container (HTTPd)
A container based on CentOS 7:
* Used [HTTPd 2.4.12 from SCL](https://www.softwarecollections.org/en/scls/rhscl/httpd24/) instead HTTPd 2.4.8 avalaible by default in CentOS repository.
* Share your ~/public_http folder as document root.
* Share ./conf/vhost.d folder to define your vhost.d.

### PHP (PHP-FPM)
A container based on CentOS 7:
* Used [PHP 5.6 from SCL](https://www.softwarecollections.org/en/scls/rhscl/rh-php56/).

## SELinux consideration
* Allow access to Docker at your config folder:
~~~bash
chcon -Rt svirt_sandbox_file_t ./conf
~~~
* Allow access to Docker at your data folder:
~~~bash
chcon -Rt svirt_sandbox_file_t ./data
~~~
* Allow access to Docker at your public_html:
~~~bash
semanage fcontext -a -t svirt_sandbox_file_t '/home/(.*/)?public_html(/.*)?'
~~~