FROM fedora:latest
ENV GOPATH=/gopath PATH=$PATH:$GOPATH/bin
RUN dnf update -y && \
	dnf groupinstall -y "C Development Tools and Libraries" && \
	dnf install -y \
		procps-ng \
		strace \
		gdb \
		less \
		nc \
		curl \
		wget \
		vim \
		tmux \
		net-tools \
		util-linux \
		docker \
		iproute \
		golang \
		golang-bin \
		git-all \
		conntrack-tools \
		busybox \
		&& \
	mkdir $GOPATH && \
	go get github.com/derekparker/delve/cmd/dlv
CMD [ "/usr/bin/sh" ]
