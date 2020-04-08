FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends apt-transport-https ca-certificates gnupg git curl unzip apt-utils wget nano software-properties-common python-pip bc \
  && ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
  && apt-add-repository ppa:ansible/ansible \
  && apt-get update


RUN apt-get install -y python-pip ansible ssh git tree nano
RUN pip install packet-python

COPY ./config/ .
