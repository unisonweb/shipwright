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
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen           && \
    dpkg-reconfigure --frontend=noninteractive locales   && \
    update-locale LANG=en_US.UTF-8

FROM debianup as docker-builder
RUN \
    wget https://get.docker.com/ -O- | su && \
    apt-get -y install build-essential
    

######################################################################
# a container for buliding ucm

FROM base as haskell-builder
RUN apt-get -y install \
      build-essential \
      libffi-dev \
      libgmp-dev \
      make \
      xz-utils \
      zlib1g-dev \
      git \
      gnupg \
      netbase && \
    wget https://get.haskellstack.org/stable/linux-x86_64.tar.gz -O- | tar -x -z -C /opt && \
    ln -s /opt/stack-*/stack /usr/local/bin/stack

FROM base as elm-download

RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz &&\
    gunzip elm.gz                                        &&\
    mv elm /usr/local/bin                                &&\
    chmod +x /usr/local/bin/elm

######################################################################
# download a unison .tar.gz and unzip the ucm binary inside

FROM debianup as download-ucm
ARG UCM_VERSION
RUN wget http://downloads.unison-lang.org/unison-${UCM_VERSION}.tar.gz -O- | tar -x -z -C /usr/local/bin 

######################################################################
# a ucm codebase server to be run alongside a codebase browser

FROM base as ucm-codebase-server
COPY --from=download-ucm /usr/local/bin/ucm /usr/local/bin/ucm
COPY files/share.transcript.md /usr/local/share/share.transcript.md
COPY files/initialize-codebase.sh /usr/local/bin/initialize-codebase.sh
COPY files/ucm_wrap /usr/local/bin/
RUN apt-get -y install less git && chmod +x /usr/local/bin/ucm_wrap /usr/local/bin/initialize-codebase.sh && \
    /usr/local/bin/initialize-codebase.sh /srv/codebase

ENTRYPOINT /usr/local/bin/ucm_wrap

