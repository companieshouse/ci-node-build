FROM node:10.21.0-alpine3.11

RUN apk update && \
    apk upgrade --no-cache && \
    apk add --no-cache \
    bash \
    git \
    make \
    openssh-client \
    unzip \
    zip

RUN ln -sf /bin/bash /bin/sh
RUN sed -i 's/bin\/ash/bin\/bash/g' /etc/passwd
RUN git config --global url."git@github.com:".insteadOf https://github.com/
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh/

COPY config /root/.ssh/config

ENTRYPOINT ["/bin/bash"]
