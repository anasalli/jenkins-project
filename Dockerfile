FROM centos:latest
RUN yum install httpd zip unzip wget -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/bonativo.zip /var/www/html
RUN unzip bonativo.zip
RUN rm -rf bonativo.zip &&\
    cp -rf bonativo/* . &&\
    rm -rf bonativo
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
