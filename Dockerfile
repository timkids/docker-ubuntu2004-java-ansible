FROM ubuntu:20.04

LABEL maintainer="timkids"

ENV DEBIAN_FRONTEND noninteractive

RUN apt update ; \
    apt upgrade -y ; \
    apt install -y --no-install-recommends \
        systemd systemd-sysv default-jre \
        python3 python3-apt procps curl; \
    apt clean ; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ; \
    rm -rf /lib/systemd/system/multi-user.target.wants/* ; \
    rm -rf /etc/systemd/system/*.wants/* ; \
    rm -rf /lib/systemd/system/local-fs.target.wants/* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* ; \
    rm -rf /lib/systemd/system/systemd-update-utmp*

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]

CMD ["/lib/systemd/systemd"]