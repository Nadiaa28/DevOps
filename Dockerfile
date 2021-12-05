FROM centos:7

RUN yum update -y
RUN yum install httpd -y
RUN yum clean all

COPY index.html /usr/local/apache2/htdocs/

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]