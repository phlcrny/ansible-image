# phlcrny/ansible

[![Docker Pulls](https://img.shields.io/docker/pulls/phlcrny/ansible)](https://hub.docker.com/repository/docker/phlcrny/ansible) [![GitHub Actions](https://img.shields.io/github/workflow/status/phlcrny/ansible-image/Push%20to%20Docker)](https://github.com/phlcrny/ansible-image/actions)

## Introduction

Dockerfile to provide an isolated Ansible environment for interactive use in the command-line, Visual Studio Code's devcontainer feature, or in a CI/CD pipeline.

## Getting Started

### Installation

Automated builds are available on [Docker Hub](https://hub.docker.com/r/phlcrny/ansible).

```bash
docker pull phlcrny/ansible
```

But you can also build your own if you want.

```bash
docker build -t phlcrny/ansible github.com/phlcrny/ansible-image
```

### Quick Start

#### Interactive

Running from the command-line as below allows for ad-hoc commands, and mounts the current directory for interactive usage and testing of playbooks

```bash
docker run -it --rm -v "${PWD}:/ansible" -w=/ansible --entrypoint=/bin/bash phlcrny/ansible
```

#### Visual Studio Code devcontainer

1. Install and configure the [Visual Studio Code Remote - Containers](https://code.visualstudio.com/docs/remote/containers) extension
1. Copy ``devcontainer.json`` to ``.vscode\devcontainer.json`` or ``.devcontainer.json``
1. Update and customise as required

#### CI/CD

Below is a basic example for use with ``gitlab-ci`` but this should be transferable to other providers.

```yaml
# .gitlab-ci.yml

---
image: phlcrny/ansible

stages:
  - test
  - deploy

lint:
  stage: test
  script:
    - ansible-lint .

deploy:
  stage: deploy
  script:
    - ansible-playbook playbook.yml
...
```
