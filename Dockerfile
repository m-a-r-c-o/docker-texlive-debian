FROM debian:testing
MAINTAINER Marco Cyriacks <marco@cyriacks.net>

RUN apt update -y && apt upgrade -y
RUN apt install -y doxygen graphviz make texlive-full

