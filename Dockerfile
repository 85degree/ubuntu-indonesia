FROM ubuntu:latest
MAINTAINER "Abdul Gaffur A Dama"

RUN sed -i 's/archive.ubuntu.com/kambing.ui.ac.id/g' \
    /etc/apt/sources.list

RUN cp -f /etc/apt/sources.list /etc/apt/sources.list.d/unej.list
RUN sed -i 's/kambing.ui.ac.id/mirror.unej.ac.id/g' \
    /etc/apt/sources.list.d/unej.list

RUN cp -f /etc/apt/sources.list /etc/apt/sources.list.d/poliwangi.list
RUN sed -i 's/kambing.ui.ac.id/mirror.poliwangi.ac.id/g' \
    /etc/apt/sources.list.d/poliwangi.list

RUN apt-get update