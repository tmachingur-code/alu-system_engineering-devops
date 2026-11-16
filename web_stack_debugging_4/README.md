cat > README.md << 'EOF'
# Web Stack Debugging #4

## Description
This project fixes an Nginx server that experiences failed requests under high concurrency.

## Problem
Nginx was configured with a file descriptor limit of 15, causing "Too many open files" errors during ApacheBench testing.

## Solution
The Puppet manifest `0-the_sky_is_the_limit_not.pp` updates the Nginx startup configuration in `/etc/default/nginx` to use a file descriptor limit of 4096.

Nginx is restarted when the configuration changes.

## Testing
The solution was tested using ApacheBench:

```bash
ab -c 100 -n 2000 localhost/
