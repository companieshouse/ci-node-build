FROM amazonlinux:2022

RUN cat /etc/resolv.conf

RUN dnf update -y && \
    dnf install -y  \
    git \
    make \
    nodejs \
    unzip \
    zip && \
    dnf clean all
