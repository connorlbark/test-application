FROM centos:latest
RUN yum -y update
RUN yum -y install httpd
ADD index.html /var/www/html
ADD httpd.conf /etc/httpd/conf/httpd.conf
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
