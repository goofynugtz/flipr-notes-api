FROM python:3-alpine
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /
ADD . /
RUN pip install --upgrade pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
COPY . /
RUN python manage.py collectstatic
RUN python manage.py makemigrations && python manage.py migrate