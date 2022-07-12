FROM centos:centos7

#Install
RUN yum install -y https://github.com/gottom/progr/raw/main/test-task-0.0.1-1.el7.noarch.rpm

CMD ["test-task"]
