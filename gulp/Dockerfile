FROM node:0.12.2
MAINTAINER Bernhard Keprt <bernhard.keprt@gmail.com>

# install updates
RUN apt-get update

RUN useradd -ms /bin/bash gulp

ADD . /gulp

CMD chown -R node /gulp

ENV HOME /home/gulp

# remove directories for node, bower and the build directory
RUN rm -rf /gulp/build
RUN rm -rf /gulp/node_modules
RUN rm -rf /gulp/bower_components

# run npm installation and bower installation
RUN cd /gulp && npm install -g bower && npm install -g gulp && npm install && npm install bower && npm install gulp
RUN cd /gulp && bower install --silent --config.interactive=false --allow-root

# switch to user node. we skip this as we need to run gulp as superuser anyway
#USER node

# switch to gulp directory on startup
WORKDIR /gulp
