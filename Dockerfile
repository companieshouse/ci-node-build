FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-base-build:1.0.0

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG NODE_VERSION=20.10.0

RUN curl --silent --location https://rpm.nodesource.com/setup_20.x  | bash - && \
    dnf install -y  \
    nodejs-$NODE_VERSION && \
    dnf update -y && \
    dnf clean all
