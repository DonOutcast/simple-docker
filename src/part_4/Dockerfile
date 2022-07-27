FROM nginx:latest
MAINTAINER Don Outcast
LABEL version="1.0"
COPY ./server.c /server.c
COPY ./run.sh /run.sh
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

RUN \
touch /var/run/nginx.pid && \
chown -R nginx:nginx /var/run/nginx.pid && \
chown -R nginx:nginx /var/log/nginx && \
chown -R nginx:nginx /var/cache/nginx && \
apt-get update && \
apt-get install -y gcc && \
apt-get install -y libfcgi-dev && \
apt-get install -y spawn-fcgi && \
rm -rf /var/lib/apt/lists && \
gcc /server.c -lpthread -lfcgi -o server && \
chmod +x /run.sh

HEALTHCHECK NONE
ENTRYPOINT ["/run.sh"]
