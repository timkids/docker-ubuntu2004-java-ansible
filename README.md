Ubuntu 20.04 Ansible Test image for Java Application
=================================================

[![CI](https://github.com/timkids/docker-ubuntu2004-java-ansible/actions/workflows/build-and-push.yml/badge.svg?event=push)](https://github.com/timkids/docker-ubuntu2004-java-ansible/actions/workflows/build-and-push.yml) [![ubuntu build status](https://img.shields.io/docker/cloud/build/timkids/docker-ubuntu2004-java-ansible.svg)](https://hub.docker.com/repository/docker/timkids/docker-ubuntu2004-java-ansible)

Ubuntu 20.04 Docker container to test Ansible roles for java applications.

> **Disclaimer**: This image is used for testing ansibles roles, not for production. Use this image for production at your own risk!

Molecule usage example
----------------------

```
platforms:
  - name: ubuntu2004
    image: timkids/docker-ubuntu2004-java-ansible
    tmpfs:
      - /run
      - /tmp
    volumes:
      - /sys/fs/cgroup:/sys/fs/cgroup:ro
    capabilities:
      - SYS_ADMIN
    command: "/lib/systemd/systemd"
    pre_build_image: true
```

Author
------

Created by timkids.
