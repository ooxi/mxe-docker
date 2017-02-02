FROM	debian:8

RUN	apt-get -y update && apt-get -y install	\
		autoconf			\
		automake			\
		autopoint			\
		bash				\
		bison				\
		bzip2				\
		flex				\
		gettext				\
		git				\
		g++				\
		gperf				\
		intltool			\
		libffi-dev			\
		libgdk-pixbuf2.0-dev		\
		libtool				\
		libltdl-dev			\
		libssl-dev			\
		libxml-parser-perl		\
		make				\
		openssl				\
		p7zip-full			\
		patch				\
		perl				\
		pkg-config			\
		python				\
		ruby				\
		scons				\
		sed				\
		unzip				\
		wget				\
		xz-utils			\
		g++-multilib			\
		libc6-dev-i386			\
		libtool-bin

RUN	groupadd --gid 10000 mxe
RUN	useradd --uid 10000 --gid 10000 mxe

RUN	mkdir -p /wd && chown -R mxe:mxe /wd
WORKDIR	/wd

USER	mxe

COPY	mxe.sh /wd/mxe.sh
CMD	/wd/mxe.sh > /wd/mxe.log 2>&1

