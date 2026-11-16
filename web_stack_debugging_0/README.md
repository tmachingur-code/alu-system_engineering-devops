# Web Stack Debugging #0

This project focuses on debugging a web server running inside a Docker container.

## Task 0: Give me a page!

The objective is to fix Apache so that it runs correctly and serves
a webpage containing "Hello Holberton" when accessing the root URL.

## Solution

The issue was that Apache was installed but not running.

The Bash script `0-give_me_a_page` starts the Apache service.
