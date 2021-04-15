FROM debian as debianup
RUN apt-get update

FROM debianup as hashidown
ARG VAULT_VERSION
COPY hashicorp-download.sh /usr/local/bin
RUN apt-get -y install curl unzip 
RUN chmod +x /usr/local/bin/hashicorp-download.sh
RUN /usr/local/bin/hashicorp-download.sh vault ${VAULT_VERSION}

FROM debianup
ENV LANG=en_US.UTF-8
COPY --from=hashidown /usr/local/bin/vault /usr/local/bin/vault
RUN apt-get -y install libncurses-dev                       \
      libncurses5                                           \
      locales                                            && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen           && \
    dpkg-reconfigure --frontend=noninteractive locales   && \
    update-locale LANG=en_US.UTF-8

