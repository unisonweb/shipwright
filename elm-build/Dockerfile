FROM debian

RUN apt-get update                                       && \
    apt-get -y install \
      netbase \
      libncurses-dev \
      libncurses5 \
      locales \
      curl                                               &&\
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen           && \
    dpkg-reconfigure --frontend=noninteractive locales   && \
    update-locale LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8

RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz &&\
    gunzip elm.gz                                        &&\
    mv elm /usr/local/bin                                &&\
    chmod +x /usr/local/bin/elm