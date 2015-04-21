FROM ubuntu:14.04.2
MAINTAINER Bernhard Keprt <bernhard.keprt@gmail.com>

# install nginx
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
RUN echo "deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx" >> /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y ca-certificates nginx && \
    rm -rf /var/lib/apt/lists/*

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

# remove existing nginx configuration
RUN rm -v /etc/nginx/nginx.conf

# copy nginx configuration
ADD conf/nginx.conf /etc/nginx/

# expose ports
EXPOSE 80 443

# start nginx with deamon off
CMD ["nginx", "-g", "daemon off;"]

RUN rm -rf /var/lib/apt/lists/* 
#&& echo "\ndaemon off;" >> /etc/nginx/nginx.conf
