FROM python:3.7.7-slim-buster

LABEL maintainer="Phil Carney (phlcrny)"

RUN apt-get update && apt-get install -y \
    git \
    sshpass \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN pip install ansible ansible-lint pywinrm