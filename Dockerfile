FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-base-build:1.0.3

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG NODE_VERSION=24.2.0

RUN curl --silent --location https://rpm.nodesource.com/setup_24.x  | bash - && \
    dnf install -y  \
    nodejs-$NODE_VERSION \
    java-21-amazon-corretto-headless \
    which && \
    dnf update -y && \
    dnf clean all