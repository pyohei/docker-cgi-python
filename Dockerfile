# Docker file for python simple webservice build

FROM ubuntu:20.04
LABEL org.opencontainers.image.authors="fabien.brousse@yesiddo.com"
ADD requirements.txt /tmp/

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
apt -y install software-properties-common apache2 wget vim python3.8 python3-pip libpq-dev python-dev && \ 
rm -rf /var/lib/apt/lists/*

# Python3.7
# RUN add-apt-repository ppa:deadsnakes/ppa && apt update
# RUN apt -y install python3.7 python3.7-dev 
# RUN python3.7 get-pip.py && \
#     pip3.7 install -r /tmp/requirements.txt 

# Python3.8
#RUN apt -y install python3.8 python3-pip
RUN pip3 install -r /tmp/requirements.txt 

# Python3.9
#RUN apt -y install python3.9

# Http settings
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

RUN mkdir -p /production/www/cgi-bin
RUN mkdir -p /production/www/lib
COPY cgi-bin /production/www/cgi-bin
COPY lib /production/www/lib
COPY apache2 /etc/apache2
RUN ln -s /etc/apache2/mods-available/cgi.load /etc/apache2/mods-enabled/cgi.load

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/apache2" ]
CMD ["-D", "FOREGROUND"]