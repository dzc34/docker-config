# Docker config (full Apache / MariaDB / PHP stack)
Build a full stack DAMP (Docker Apache MariaDB PHP) using docker and docker-compose.

## Features

### Apache (HTTPd)
A container based on CentOS 7:
* Used [HTTPd 2.4 (> 2.4.10) from SCL](https://www.softwarecollections.org/en/scls/rhscl/httpd24/) instead HTTPd 2.4.8 avalaible by default in CentOS repository.
* Share your ~/public_http as document root.

### PHP (PHP-FPM)
A container based on CentOS 7:
* WIP