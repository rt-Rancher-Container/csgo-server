FROM ubuntu:18.04
MAINTAINER r00t65 <mail@r00t65.de>

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install lib32gcc1 curl net-tools lib32stdc++6 locales
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8
RUN dpkg-reconfigure --frontend=noninteractive locales
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN mkdir /srv/steamcmd

RUN mkdir /srv/csgo

WORKDIR /srv/steamcmd

ADD https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz steamcmd_linux.tar.gz
RUN tar -zxvf steamcmd_linux.tar.gz

RUN ./steamcmd.sh +login anonymous +force_install_dir /srv/csgo +app_update 740 validate +quit
