FROM ubuntu:16.04

RUN apt-get update -y &&  \
    apt-get install -y python-pip python-dev

WORKDIR /opt/app-root/src

COPY app.py /opt/
COPY requirements.txt /opt/



RUN pip install -r requirements.txt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0