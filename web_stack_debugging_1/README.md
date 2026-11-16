
# Web Stack Debugging #1

## Task 0: Nginx likes port 80

This project focuses on debugging an Nginx web server.

### Problem

Nginx was not listening on port 80 because the symbolic link between
sites-available and sites-enabled was broken.

### Solution

The Bash script `0-nginx_likes_port_80` recreates the symbolic link
and restarts the Nginx service.

### Verification

The server should return the Nginx welcome page with HTTP status 200
when accessed through port 80.
