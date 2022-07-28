FROM nginx
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
chown -R nginx:nginx /etc/nginx/nginx.conf && \
apt-get update && \
apt-get install -y gcc && \
apt-get install -y libfcgi-dev && \
apt-get install -y spawn-fcgi && \
rm -rf /var/lib/apt/lists && \
chmod 777 /home \
&& chmod 755 /sbin/unix_chkpwd \
&& chmod u-s /usr/bin/chsh \
&& chmod u-g /usr/bin/chsh \
&& chmod 755 /usr/bin/chage \
&& chmod u-s /bin/su \
&& chmod u-g /bin/su \
&& chmod 755 /usr/bin/wall \
&& chmod u-s /usr/bin/chfn \
&& chmod u-g /usr/bin/chfn \
&& chmod u-s /usr/bin/gpasswd \
&& chmod u-g /usr/bin/gpasswd \
&& chmod u-s /bin/mount \
&& chmod u-g /bin/mount \
&& chmod u-s /usr/bin/newgrp \
&& chmod u-g /usr/bin/newgrp \
&& chmod 755 /usr/bin/expiry \
&& chmod u-s /bin/umount \
&& chmod u-g /bin/umount \
&& chmod u-s /usr/bin/passwd \
&& chmod u-g /usr/bin/passwd && \
gcc /server.c -lpthread -lfcgi -o server && \
chmod +x /run.sh

USER nginx
HEALTHCHECK NONE
ENTRYPOINT ["/run.sh"]
