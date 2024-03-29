#!/bin/sh

apt-get update
apt-get install python3-certbot-nginx -y

certbot certonly --nginx --noninteractive --agree-tos -d rahul-api.sr.flipr.ai --register-unsafely-without-email
certbot certonly --nginx --noninteractive --agree-tos -d rahul-grafana.sr.flipr.ai --register-unsafely-without-email
certbot certonly --nginx --noninteractive --agree-tos -d rahul-jenkins.sr.flipr.ai --register-unsafely-without-email

cp default.conf.backup /etc/nginx/conf.d/default.conf
