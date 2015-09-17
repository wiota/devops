FROM ubuntu:14.04
MAINTAINER Chris Brantley

COPY /facade/ /opt/facade/

RUN apt-get update
RUN apt-get install -y build-essential python-dev python-pip python-psycopg2
RUN apt-get install -y lib32z1-dev libxml2-dev libxslt-dev python-lxml
RUN apt-get install -y ruby build-essential gem
RUN gem install foreman

run pip install -r /opt/facade/requirements.txt

EXPOSE 80
WORKDIR /opt/facade
