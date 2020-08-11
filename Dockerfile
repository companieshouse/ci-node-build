FROM centos:8

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -

RUN yum update -y && \
    yum install -y  \
    git \
    libX11 \
    make \
    nodejs \
    unzip \
    zip && \
    yum clean all
