FROM nginx
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN apt-get update
RUN apt-get install certbot -y
# RUN sudo certbot certonly --standalone --preferred-challenges http -d example.com
RUN mkdir -p /var/www/html/
RUN certbot certonly --noninteractive --agree-tos -d rahul-api.sr.flipr.ai -d www.rahul-api.sr.flipr.ai --register-unsafely-without-email --webroot -w /var/www/html/