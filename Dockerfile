#####################################################################
# debianup is the name for our intermediate stage which we will use
# to build other intermediate stages from, like down

FROM debian as debianup
RUN apt-get update &&\
    apt-get -y install curl wget unzip


######################################################################
# downloader of hashicorp things

FROM debianup as hashidown
ARG VAULT_VERSION
COPY files/hashicorp-download.sh /usr/local/bin
RUN chmod +x /usr/local/bin/hashicorp-download.sh
RUN /usr/local/bin/hashicorp-download.sh vault ${VAULT_VERSION}

######################################################################
# This is the base on which we will build all of the runtime 

FROM debianup as base
ENV LANG=en_US.UTF-8
COPY --from=hashidown /usr/local/bin/vault /usr/local/bin/vault
RUN apt-get -y install libncurses-dev                       \
      libncurses5                                           \
      locales                                            && \
    echo "C.UTF-8 UTF-8" > /etc/locale.gen           && \
    dpkg-reconfigure --frontend=noninteractive locales   && \
    update-locale LANG=C.UTF-8

FROM debianup as docker-builder
RUN \
    wget https://get.docker.com/ -O- | su && \
    apt-get -y install build-essential

######################################################################
# a container for buliding ucm

FROM docker-builder as haskell-builder

# Set encoding, required by some haskell builds.
ENV LANG=C.UTF-8
RUN apt-get -y install \
      build-essential \
      libffi-dev \
      libgmp-dev \
      libpq-dev \
      libtinfo-dev \
      make \
      xz-utils \
      zlib1g-dev \
      git \
      gnupg \
      netbase && \
    wget https://get.haskellstack.org/stable/linux-x86_64.tar.gz -O- | tar -x -z -C /opt && \
    ln -s /opt/stack-*/stack /usr/local/bin/stack

