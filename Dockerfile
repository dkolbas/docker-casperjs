FROM fedora
MAINTAINER Dan Kolbas <dkolbas@redhat.com>

# Required packages
RUN yum install -y \
      vim \
      wget \
      gcc \
      gcc-c++ \
      make \
      python \
      git \
      openssl-devel \
      freetype \
      fontconfig \
      libfreetype.so.6 \
      libfontconfig.so.1 \ 
      libstdc++.so.6 \
      nodejs \ 
      npm \ 
      bzip2

RUN yum update -y
RUN yum clean all

# Install PhantomJs
RUN npm install -g casperjs phantomjs
