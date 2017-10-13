#!/bin/sh -e

/usr/local/bin/ParseConfig /app/pam.conf /etc/pam.d/sshd
/usr/local/bin/ParseConfig /app/pam.conf /etc/pam.d/vsftpd
/usr/local/bin/ParseConfig /app/nss-mysql.conf /etc/nss-mysql.conf
/usr/local/bin/ParseConfig /app/nss-mysql-root.conf /etc/nss-mysql-root.conf
/usr/local/bin/ParseConfig /app/pam-mysql.conf /etc/pam-mysql.conf

/usr/sbin/sshd &
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
