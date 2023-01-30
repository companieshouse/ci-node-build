FROM amazonlinux:2022

RUN dnf update -y && \
    dnf install -y  \
    git \
    make \
    nodejs \
    unzip \
    zip && \
    dnf clean all
