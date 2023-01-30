FROM amazonlinux:2022

RUN set -uex; \
    echo "nameserver 169.254.169.253" > /etc/resolv.conf

RUN dnf update -y && \
    dnf install -y  \
    git \
    make \
    nodejs \
    unzip \
    zip && \
    dnf clean all
