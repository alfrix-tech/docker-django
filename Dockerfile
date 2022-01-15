FROM python:latest

RUN mkdir -p /opt/services/djangoapp/src
COPY ./requirements.txt /opt/services/djangoapp/src

WORKDIR /opt/services/djangoapp/src

RUN pip install --no-cache-dir -r requirements.txt
COPY ./ /opt/services/djangoapp/src

EXPOSE 9000

ENTRYPOINT ["python", "testapp/manage.py"]

CMD ["runserver", "localhost:9000"] 
