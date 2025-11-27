#FROM almalinux:10-kitten-minimal
FROM almalinux

##

WORKDIR /

COPY /provision /

RUN ls -lha /


RUN bash create.bash

##

RUN yum update -y && yum install httpd httpd-tools -y

##

## 

## https://unix.stackexchange.com/questions/642824/ssh-fails-to-start-due-to-missing-host-keys

RUN ssh-keygen -A

##


EXPOSE 80 22

##CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]

CMD ["/usr/sbin/sshd","-D"]

