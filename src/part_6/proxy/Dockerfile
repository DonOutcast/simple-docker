FROM nginx:latest
MAINTAINER Don Outcast
LABEL version="1.0"

COPY ./run.sh /run.sh
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

RUN \
touch /var/run/nginx.pid && \
chown -R nginx:nginx /var/run/nginx.pid && \
chown -R nginx:nginx /var/log/nginx && \
chown -R nginx:nginx /var/cache/nginx && \
chmod +x /run.sh

USER nginx
HEALTHCHECK NONE
ENTRYPOINT ["/run.sh"]
