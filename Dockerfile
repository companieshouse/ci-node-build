FROM node:10-alpine

RUN apk update && \
    apk upgrade --no-cache && \
    apk add --no-cache \
    bash \
    git \
    make \
    openssh-client \
    python3 \
    unzip \
    zip

RUN ln -sf /bin/bash /bin/sh
RUN ln -sf /usr/bin/python3 /usr/bin/python
RUN sed -i 's/bin\/ash/bin\/bash/g' /etc/passwd

ENTRYPOINT ["/bin/bash"]
