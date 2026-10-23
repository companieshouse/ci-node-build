FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-base-build:1.1.1

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG NODE_VERSION=24.22.1

RUN curl --silent --location https://rpm.nodesource.com/setup_24.x  | bash - && \
    dnf install -y  \
    nodejs-$NODE_VERSION \
    java-21-amazon-corretto-headless-21.0.12* \
    which-2.21* && \
    dnf update -y && \
    dnf clean all
