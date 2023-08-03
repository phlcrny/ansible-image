FROM python:3.11-alpine

LABEL maintainer="Phil Carney (phlcrny)"

RUN apk update && apk add --no-cache build-base libffi-dev openssh sshpass git

ENV ANSIBLE='8.0'
ENV ANSIBLE_CORE='2.15'
ENV ANSIBLE_LINT='6.13'

RUN pip install --upgrade pip && pip install 'ansible>=8.0,<9.0' 'ansible-core>=2.15,<2.16' 'ansible-lint>=6.13,<6.14'

ENTRYPOINT [ "/bin/sh" ]
