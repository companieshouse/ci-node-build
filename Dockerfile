FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-base-build:1.2.0

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG NODE_VERSION=24.22.3

RUN curl --silent --location https://rpm.nodesource.com/setup_24.x  | bash - && \
    dnf install -y  \
    nodejs-$NODE_VERSION \
    java-21-amazon-corretto-headless-21.0.13* \
    which-2.21* && \
    dnf update -y && \
    dnf clean all
    
# Workaround pending release of amazonlinux:2023.12.20261117 to dockerhub
RUN dnf update -y java-21-amazon-corretto --releasever 2023.12.20261117 
