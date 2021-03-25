FROM python:3

ENV DJANGO_SUPERUSER_PASSWORD "admin"
ENV DJANGO_SUPERUSER_USERNAME "admin"

RUN apt update
RUN apt install -y libpq-dev postgresql

WORKDIR /code
COPY . /code/

RUN pip install -r requirements.txt
