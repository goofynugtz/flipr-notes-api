FROM python:3-slim-buster
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /
ADD . /
RUN apt-get update
RUN pip install --upgrade pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
COPY . /
RUN python manage.py collectstatic --no-input
RUN python manage.py makemigrations --no-input && python manage.py migrate --no-input