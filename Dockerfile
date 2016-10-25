FROM fedora:latest
RUN dnf update -y && \
	dnf groupinstall -y "C Development Tools and Libraries" && \
	dnf install -y procps-ng strace gdb less nc curl wget vim tmux net-tools util-linux docker iproute
CMD [ "/usr/bin/sh" ]
