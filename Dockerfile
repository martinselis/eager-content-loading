FROM nginx
COPY assets /usr/share/nginx/html
COPY ./nginx /etc/nginx/conf.d
RUN mkdir /etc/nginx/certs
WORKDIR "/etc/nginx/certs"
RUN openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 365 -keyout localhost.key -out localhost.crt -subj "/C=UK/ST=UK/L=UK/O=HTTP2TEST/OU=UK Department/CN=localhost"
