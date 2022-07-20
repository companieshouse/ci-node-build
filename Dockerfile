FROM centos:8

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum update -y && \
    yum module install nodejs:16/development -y && \
    yum install -y  \
    alsa-lib.x86_64 \
    atk.x86_64 \
    cups-libs.x86_64 \
    GConf2.x86_64 \
    git \
    gtk3.x86_64 \
    libdrm \
    libgbm \
    libX11 \
    libXcomposite.x86_64 \
    libXcursor.x86_64 \
    libXdamage.x86_64 \
    libXext.x86_64 \
    libXi.x86_64 \
    libXrandr.x86_64 \
    libXScrnSaver.x86_64 \
    libXtst.x86_64 \
    make \
    nodejs \
    nss \
    pango.x86_64 \
    unzip \
    xorg-x11-fonts-100dpi \
    xorg-x11-fonts-75dpi \
    xorg-x11-fonts-cyrillic \
    xorg-x11-fonts-misc \
    xorg-x11-fonts-Type1 \
    xorg-x11-utils \
    zip && \
    yum clean all
