FROM amazonlinux:2023

RUN dnf update -y && \
    dnf install -y  \
    git \
    make \
    nodejs \
    npm \
    unzip \
    zip && \
    dnf clean all
