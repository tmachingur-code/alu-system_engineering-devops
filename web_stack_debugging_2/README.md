# Web Stack Debugging #2

This project contains Bash scripts for debugging and configuring web server environments.

## Tasks

### 0. Run software as another user

The `0-iamsomeoneelse` script accepts a username and executes the `whoami` command as that user.

Example:

```bash
./0-iamsomeoneelse www-data
```

Expected output:

```text
www-data
```

### 1. Run Nginx as Nginx

The `1-run_nginx_as_nginx` script configures Nginx to run under the unprivileged `nginx` user and listen on port 8080.
