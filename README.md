# docker-postfix-relay
Dockerfile for a Postfix Relay

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