# Firewall Configuration

This project configures UFW (Uncomplicated Firewall) on `web-01` to block all incoming traffic except the required TCP ports.

### Allowed Ports
- **22:** SSH
- **80:** HTTP
- **443:** HTTPS

### Firewall Rules
- Deny all incoming traffic by default.
- Allow all outgoing traffic.
- Allow incoming TCP connections on ports 22, 80 and 443.
- Enable UFW to enforce the rules.

### Execution
Run the Bash script `0-block_all_incoming_traffic_but` on `web-01`.

Verify the configuration using:

```bash
sudo ufw status verbose
```
