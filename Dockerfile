FROM fedora:latest
RUN dnf update -y && dnf install -y procps-ng strace gdb
CMD [ "/usr/bin/sh" ]


