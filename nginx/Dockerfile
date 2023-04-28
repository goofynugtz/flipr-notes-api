FROM nginx:alpine
COPY ./default.conf /etc/nginx/conf.d/default.conf
# RUN sudo certbot certonly --standalone --preferred-challenges http -d example.com
RUN sudo certbot certonly --noninteractive --agree-tos -d rahul-api.sr.flipr.ai -d www.rahul-api.sr.flipr.ai --register-unsafely-without-email --webroot -w /var/www/html/