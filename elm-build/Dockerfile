
FROM debian

RUN apt-get update                                       && \
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
      libncurses5 \
      locales \
      wget                                               &&\
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen           && \
    dpkg-reconfigure --frontend=noninteractive locales   && \
    update-locale LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8

RUN \
    cd /opt && \
    wget https://get.haskellstack.org/stable/linux-x86_64.tar.gz

RUN \
    cd /opt && \
    tar xzf linux-x86_64.tar.gz && \
    ln -s /opt/stack-*/stack /usr/local/bin/stack

