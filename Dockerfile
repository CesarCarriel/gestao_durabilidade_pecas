FROM python:3

RUN useradd -ms /bin/bash django

USER django

ENV PYTHONUNBUFFERED 1

WORKDIR /home/django/app

ENV PATH $PATH:/home/django/.local/bin

COPY requeriments.txt /home/django/app

RUN pip install -r requeriments.txt

COPY . /home/django/app