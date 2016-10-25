FROM fedora:latest
RUN dnf update -y && \
	dnf groupinstall "C Development Tools and Libraries" && \
	dnf install -y procps-ng strace gdb less nc curl wget vim tmux net-tools util-linux docker
CMD [ "/usr/bin/sh" ]
