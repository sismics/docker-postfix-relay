#
# A Postfix server that relays incoming mails to another server (e.g. Sendgrid)
#

FROM debian:jessie
MAINTAINER Jean-Marc Tremeaux <jm.tremeaux@sismics.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y -q install supervisor rsyslog postfix

COPY etc /etc
COPY usr /usr

EXPOSE 25

CMD ["/usr/local/bin/entrypoint.sh", "-n"]
