FROM fedora:latest
ENV GOPATH=/go PATH=$PATH:$GOPATH/bin
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
		llvm \
		clang \
		kernel-debug \
		kernel-devel \
		which \
		python3 \
		openssl \
		groff-base \
		openssh \
		jq \
		cloud-init \
		unzip
RUN wget -O /tmp/awscli-bundle.zip https://s3.amazonaws.com/aws-cli/awscli-bundle.zip && \
	unzip -d /tmp/ /tmp/awscli-bundle.zip && \
	python3 /tmp/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
	rm -f /tmp/awscli-bundle.zip && \
	rm -rf /tmp/awscli-bundle && \
	curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
	chmod +x ./kubectl && \
	mv ./kubectl /usr/local/bin/kubectl && \
	mkdir $GOPATH && \
	wget -O /bin/yq https://github.com/mikefarah/yq/releases/download/2.0.1/yq_linux_amd64 && \
	chmod +x /bin/yq && \
	wget -O /bin/ct https://github.com/coreos/container-linux-config-transpiler/releases/download/v0.9.0/ct-v0.9.0-x86_64-unknown-linux-gnu && \
	chmod +x /bin/ct

CMD [ "/usr/bin/sh" ]
