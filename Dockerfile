FROM registry.fedoraproject.org/fedora:latest
MAINTAINER Marco Cyriacks <marco@cyriacks.net>

RUN dnf upgrade -y
RUN dnf install -y texlive-scheme-full
RUN dnf install -y doxygen graphviz make

