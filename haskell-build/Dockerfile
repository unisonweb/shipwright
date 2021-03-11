
FROM debian

RUN apt-get update && \
    apt-get -y install \
      build-essential \
      libffi-dev \
      libgmp-dev \
      make \
      xz-utils \
      zlib1g-dev \
      git \
      gnupg \
      netbase \
      libncurses-dev \
      wget

RUN \
    cd /opt && \
    wget https://get.haskellstack.org/stable/linux-x86_64.tar.gz

RUN \
    cd /opt && \
    tar xzf linux-x86_64.tar.gz && \
    ln -s /opt/stack-*/stack /usr/local/bin/stack

