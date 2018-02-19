FROM ubuntu:16.04
# add the files inside the current directory to the /code directory inside the container
ADD . /code
WORKDIR /code
RUN \
    apt-get update -y &&\
    apt-get install apache2 -y &&\
    apt-get install libapache2-mod-wsgi-py3 -y &&\
    apt-get install python3-setuptools -y &&\
    apt-get install python3-pip -y &&\
    pip3 install -r requirements.txt 

RUN a2enmod wsgi

RUN mv 000-default.conf /etc/apache2/sites-available/ &&\ 
    echo 'ServerName localhost' >> /etc/apache2/apache2.conf &&\ 
    service apache2 restart 

ENTRYPOINT [ "/bin/bash" ]