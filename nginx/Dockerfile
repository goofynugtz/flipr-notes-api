FROM nginx
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./ssl.sh ./ssl.sh
ENTRYPOINT [ "bash","./ssl.sh" ]
