FROM python:3.8

LABEL maintainer="Phil Carney (phlcrny)"

ARG ANSIBLE_VERSION=2.10

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    git \
    sshpass \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip \
    && pip install "ansible>=${ANSIBLE_VERSION}" "ansible-lint>=4.3.6" pywinrm[kerberos] paramiko