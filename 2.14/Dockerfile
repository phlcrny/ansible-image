FROM python:3.11-alpine

LABEL maintainer="Phil Carney (phlcrny)"

RUN apk update && apk add --no-cache build-base libffi-dev openssh sshpass git

ENV ANSIBLE='7.0'
ENV ANSIBLE_CORE='2.14'
ENV ANSIBLE_LINT='6.12'

RUN pip install --upgrade pip && pip install 'ansible>=7.0,<8.0' 'ansible-core>=2.14,<2.15' 'ansible-lint>=6.12,<6.13'

ENTRYPOINT [ "/bin/sh" ]
