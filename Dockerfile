FROM fedora:latest
RUN dnf install procps-ng strace gdb
CMD [ "/usr/bin/sh" ]


