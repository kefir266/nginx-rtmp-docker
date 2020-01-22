FROM debian:9.11 AS debian

RUN apt-get update
RUN apt-get install -y curl \
    libconfig9 automake libconfig-dev pkg-config gengetopt libtool libcurl4-openssl-dev libssl-dev \
    make gcc wget build-essential ffmpeg

RUN apt-get install -y git
RUN mkdir nginx

ARG NGINX_VERSION=1.17.8

RUN git clone https://github.com/arut/nginx-rtmp-module.git /usr/build/nginx-rtmp-module

RUN curl -sL https://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz | tar -C /nginx --strip 1 -xz

COPY ./*.sh /scripts/
WORKDIR /scripts

RUN ./pcre.sh
RUN ./zlib.sh

WORKDIR /nginx
RUN ./configure \
    --sbin-path=/usr/local/nginx/nginx \
    --conf-path=/usr/local/nginx/nginx.conf \
    --pid-path=/usr/local/nginx/nginx.pid \
    --with-pcre=/scripts/pcre-8.43 \
    --with-zlib=/scripts/zlib-1.2.11 \
    --with-http_ssl_module \
    --with-stream \
    --with-mail=dynamic \
    --add-module=/usr/build/nginx-rtmp-module

RUN make && make install

CMD ["/usr/local/nginx/nginx", "-g", "daemon off;"]

