# phlcrny/ansible

[![Docker Pulls](https://img.shields.io/docker/pulls/phlcrny/ansible)](https://hub.docker.com/repository/docker/phlcrny/ansible) [![GitHub Actions](https://img.shields.io/github/workflow/status/phlcrny/ansible-image/Push%20to%20Docker)](https://github.com/phlcrny/ansible-image/actions)

## Introduction

Dockerfile to provide an isolated Ansible environment for interactive use in a CI/CD pipeline, interactively, or as the base for a VS Code Dev Container.

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
docker run -it --rm -v "${PWD}:/workingDir" -w=/workingDir phlcrny/ansible
```

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
