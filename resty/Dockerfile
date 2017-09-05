FROM openresty/openresty:trusty

RUN apt-get update && apt-get install vim -y

RUN mkdir /usr/local/openresty/nginx/conf/conf.d && mkdir /var/log/nginx/ && \
    mkdir /usr/local/openresty/nginx/lua/

COPY ./nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

WORKDIR /usr/local/openresty/nginx/lua/

EXPOSE 80

ENTRYPOINT ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]