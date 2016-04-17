FROM debian:jessie
MAINTAINER Roman Finkelnburg
ENV REFRESHED_AT 2016-04-17

ENV DEBIAN_FRONTEND noninteractive
ENV CHEF_HOME /chef-repo

# Installing Chef Client
# (other versions at https://downloads.chef.io/chef-client/)
RUN apt-get update && apt-get install -y wget
RUN wget https://packages.chef.io/stable/debian/8/chef_12.9.38-1_amd64.deb
RUN dpkg -i chef_12.9.38-1_amd64.deb

VOLUME /chef-repo
VOLUME /scripts

ENTRYPOINT /scripts/entrypoint.sh
