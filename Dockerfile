FROM centos:latest
RUN  sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install httpd zip unzip wget -y
WORKDIR /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page269/bonativo.zip 
RUN unzip bonativo.zip
RUN rm -rf bonativo.zip &&\
    cp -rf bonativo/* . &&\
    rm -rf bonativo
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"] 
