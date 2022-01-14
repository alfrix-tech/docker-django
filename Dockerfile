FROM python:latest

RUN mkdir -p /opt/services/djangoapp/src
COPY ./requirements.txt /opt/services/djangoapp/src

RUN pip install requirements.txt
COPY ./ /opt/services/djangoapp/src

