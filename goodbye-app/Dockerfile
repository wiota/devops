FROM ubuntu:14.04
MAINTAINER Chris Brantley

COPY /src /opt/goodbye-app/

RUN apt-get update
RUN apt-get install -y build-essential python-dev python-pip python-psycopg2

run pip install -r /opt/goodbye-app/requirements.txt

EXPOSE 80
WORKDIR /opt/goodbye-app
