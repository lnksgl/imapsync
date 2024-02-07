FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apache2

RUN apt update && apt install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt update && apt install -y php8.1
RUN apt -y install git rcs make makepasswd cpanminus
RUN apt -y install make
RUN apt -y install gcc libssl-dev libauthen-ntlm-perl libclass-load-perl libcrypt-ssleay-perl liburi-perl libdata-uniqid-perl libdigest-hmac-perl libdist-checkconflicts-perl libfile-copy-recursive-perl libio-compress-perl libio-socket-inet6-perl libio-socket-ssl-perl libio-tee-perl libmail-imapclient-perl libmodule-scandeps-perl libnet-ssleay-perl libpar-packer-perl libreadonly-perl libsys-meminfo-perl libterm-readkey-perl libtest-fatal-perl libtest-mock-guard-perl libtest-pod-perl libtest-requires-perl libtest-simple-perl libunicode-string-perl libencode-imaputf7-perl libregexp-common-perl libfile-tail-perl 
RUN cpanm Crypt::OpenSSL::RSA Crypt::OpenSSL::Random --force
RUN cpanm Mail::IMAPClient JSON::WebToken Test::MockObject 
RUN cpanm Unicode::String Data::Uniqid

RUN apt -y install python3-pip

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html

COPY . /var/www/html
RUN rm /var/www/html/index.html
RUN mkdir /var/www/html/cron/history
RUN mkdir /var/www/html/cron/LOG_imapsync
RUN chmod 777 -R /var/www/html

#RUN apt -y install cron
#RUN crontab -l | { cat; echo "* * * * * for each in /var/www/html/cron/*.sh ; do sh $each ; done"; } | crontab -
#RUN service cron start

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
