FROM ubuntu:20.04
MAINTAINER "Iordanis Kostelidis <kostelidis@ieee.org"

ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="Europe/Athens"

RUN apt-get update && apt-get -y install \
    firefox \
    openvpn \
&& apt-get autoclean && apt-get clean

RUN mkdir /root/openvpn
VOLUME /root/openvpn
WORKDIR /root/openvpn

ENTRYPOINT ["bash"]