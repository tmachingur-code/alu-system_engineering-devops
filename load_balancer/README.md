Load Balancer Project

Overview

This project focuses on configuring multiple Nginx web servers and implementing a load balancer using HAProxy.

The goal is to improve web server availability, distribute incoming HTTP requests across multiple servers, and understand how load balancing works in a distributed web infrastructure.

The project uses Bash automation scripts to configure servers and automate the installation and configuration of required services.

Architecture

The infrastructure consists of three servers:

web-01: First Nginx web server.

web-02: Second Nginx web server, configured identically to web-01.

lb-01: Load balancer responsible for distributing incoming traffic between the two web servers.

HAProxy will use the round-robin algorithm to distribute incoming requests between web-01 and web-02.
