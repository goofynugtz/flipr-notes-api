FROM nginx
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./ssl.sh ./ssl.sh
# ENTRYPOINT [ "bash","./ssl.sh" ]
RUN apt-get update
RUN apt-get -y install curl
HEALTHCHECK CMD curl --fail http://localhost || exit 1