FROM debian:jessie
MAINTAINER Marco Cyriacks <marco@cyriacks.net>

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y doxygen graphviz make texlive-full

