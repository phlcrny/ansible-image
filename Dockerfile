FROM python:3.8

LABEL maintainer="Phil Carney (phlcrny)"

ARG ANSIBLE_VERSION=2.10

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    git \
    sshpass \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password ansible-worker

USER ansible-worker

WORKDIR  /home/ansible-worker

COPY --chown=worker:worker requirements.txt /home/ansible-worker/requirements.txt

RUN pip install --user --upgrade pip && pip install --user -r /home/ansible-worker/requirements.txt
