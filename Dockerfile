FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-base-build:1.0.0

RUN curl --silent --location https://rpm.nodesource.com/setup_20.x  | bash - && \
    dnf update -y && \
    dnf install -y  \
    nodejs \
    npm && \
    dnf clean all
