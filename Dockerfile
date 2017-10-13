FROM ubuntu:latest
MAINTAINER jckimble <jckimble@thorbis.com>

WORKDIR /var/www
VOLUME /var/www

COPY startup.sh /startup.sh
COPY etc/nss-mysql-root.conf /app/
COPY etc/nss-mysql.conf /app/
COPY etc/pam-mysql.conf /app/
COPY etc/nsswitch.conf /etc/
COPY etc/pam.conf /app/

RUN apt-get update && apt-get install openssh-server vsftpd libnss-mysql-bg libpam-mysql -y && rm -f /var/cache/apk/*
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

ADD https://github.com/thorbis-hosting/ParseConfig/releases/download/v0.1/ParseConfig /usr/local/bin/
RUN chmod +x /startup.sh /usr/local/bin/ParseConfig && mkdir /var/run/sshd


EXPOSE 20 21 22 10000-20000
CMD ["/startup.sh"]
