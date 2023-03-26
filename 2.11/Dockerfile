FROM python:3.11-alpine

LABEL maintainer="Phil Carney (phlcrny)"

RUN apk update && apk add --no-cache build-base libffi-dev openssh git

ENV ANSIBLE='4.7'
ENV ANSIBLE_CORE='2.11'
ENV ANSIBLE_LINT='5.2'

RUN pip install --upgrade pip && pip install 'ansible>=4.7,<4.8' 'ansible-core>=2.11,<2.12' 'ansible-lint>=5.2,<5.3'

ENTRYPOINT [ "/bin/sh" ]
