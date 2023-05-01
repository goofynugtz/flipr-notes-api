FROM python:3-slim-buster
COPY ./ssl.sh ./ssl.sh
RUN apt-get update
ENTRYPOINT [ "bash","./ssl.sh" ]