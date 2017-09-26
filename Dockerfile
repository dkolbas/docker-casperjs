FROM fedora
MAINTAINER Dan Kolbas <dkolbas@redhat.com>

# Required packages
RUN yum install -y vim wget gcc gcc-c++ make git openssl-devel freetype fontconfig libfreetype.so.6 libfontconfig.so.1 libstdc++.so.6 nodejs npm bzip2; yum update -y; yum clean all

# phantom version
ENV PHANTOMJS_VERSION 2.1.1
ENV PHANTOMJS_CDNURL http://cnpmjs.org/downloads

# Install PhantomJs
RUN wget https://cnpmjs.org/mirrors/phantomjs/phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN tar -xvf phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN ln -s phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
RUN ls -al /usr/bin

# Install casperjs
RUN npm config set registry http://registry.npmjs.org/
RUN npm install -g casperjs
RUN ls -al /usr/bin/
RUN ls -al /usr/local/bin
RUN ls -al /usr/lib/node_modules/

# Run things with latest version
# npm install -g git+https://github.com/casperjs/casperjs.git

# Symlink PhantomJS
#RUN ln -s /usr/lib/node_modules/casperjs/node_modules/phantomjs/lib/phantom/bin/phantomjs /usr/bin/phantomjs 

#RUN ls -al /usr/lib/node_modules/

#RUN ls -al /usr/lib/node_modules/

#RUN ls -al /usr/lib/casperjs/
