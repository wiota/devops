FROM ubuntu:14.04
MAINTAINER Wiota Co

COPY /src /opt/hello-app/

RUN apt-get update
RUN apt-get install -y build-essential python-dev python-pip python-psycopg2

run pip install -r /opt/hello-app/requirements.txt

EXPOSE 80
WORKDIR /opt/hello-app
