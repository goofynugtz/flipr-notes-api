#!/bin/sh

apt-get install python3-certbot-nginx -y

# certbot certonly --nginx --noninteractive --agree-tos -d rahul-api.sr.flipr.ai -d rahul-prometheus.sr.flipr.ai -d rahul-grafana.sr.flipr.ai -d rahul-cadvisor.sr.flipr.ai -d rahul-node.sr.flipr.ai --register-unsafely-without-email
certbot --nginx --non-interactive --agree-tos --email rahulranjan25.RR@gmail.com --no-eff-email -d rahul-api.sr.flipr.ai -d rahul-grafana.sr.flipr.ai -d rahul-jenkins.sr.flipr.ai
# while true; do sleep 1; done