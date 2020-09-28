[![GitHub release](https://img.shields.io/github/release/sismics/docker-postfix-relay.svg?style=flat-square)](https://github.com/sismics/docker-backupninja/releases/latest)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## About
Docker image for a Postfix Relay

# Description
A Postfix server that relays incoming mails to another server (e.g. Sendgrid)

# Usage
```
docker run -d -h postfix --name postfix --restart=always \
    -e 'HOST_IP=1.2.3.4' \
    -e 'HOST_NAME=mycompany.com' \
    -e 'SMTP_HOST=smtp.sendgrid.net' \
    -e 'SMTP_PORT=587' \
    -e 'SMTP_USER=username' \
    -e 'SMTP_PASSWORD=password' \
    sismics/postfix-relay
```