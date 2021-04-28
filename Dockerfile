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

######################################################################
# download a unison .tar.gz and unzip the ucm binary inside

FROM debianup as download-ucm
ARG UCM_VERSION
RUN wget http://hub.stew.casa/downloads/unison-${UCM_VERSION}.tar.gz -O- | tar -x -z -C /usr/local/bin 

######################################################################
# a ucm codebase server to be run alongside a codebase browser

FROM base as ucm-codebase-server
COPY --from=download-ucm /usr/local/bin/ucm /usr/local/bin/ucm
COPY files/ucm_wrap /usr/local/bin/
RUN chmod +x /usr/local/bin/ucm_wrap
ENTRYPOINT /usr/local/bin/ucm_wrap

######################################################################
# a container for buliding ucm

FROM debianup as docker-builder
RUN \
    wget https://get.docker.com/ -O- | su && \
    apt-get -y install build-essential
    

FROM base as haskell-builder
RUN \
    wget https://get.haskellstack.org/stable/linux-x86_64.tar.gz -O- | tar -x -z -C /opt && \
    ln -s /opt/stack-*/stack /usr/local/bin/stack

FROM base as elm-download

RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz &&\
    gunzip elm.gz                                        &&\
    mv elm /usr/local/bin                                &&\
    chmod +x /usr/local/bin/elm

######################################################################
# a container for buliding elm, such as the codebase ui

FROM base as elm-builder
ENV NVM_DIR=$HOME/.nvm
RUN wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh -O- | bash &&\
    . $NVM_DIR/nvm.sh &&\
    nvm install node
COPY --from=elm-download /usr/local/bin/elm /usr/local/bin/elm
