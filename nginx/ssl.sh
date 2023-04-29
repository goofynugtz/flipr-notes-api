#!/bin/sh
mkdir -p /var/www/html/
certbot certonly --nginx --noninteractive --agree-tos -d rahul-api.sr.flipr.ai -d www.rahul-api.sr.flipr.ai --register-unsafely-without-email