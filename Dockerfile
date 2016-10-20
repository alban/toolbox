FROM fedora:latest
RUN dnf update -y && dnf install -y procps-ng strace gdb less nc curl wget vim tmux net-tools util-linux
CMD [ "/usr/bin/sh" ]
