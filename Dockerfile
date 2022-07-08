FROM centos:centos7

#Create dir and download rpm
RUN mkdir ~/progr && \
	cd ~/progr && \ 
	yum install -y wget && \
	wget https://github.com/gottom/progr/raw/main/test-task-0.0.1-1.el7.noarch.rpm

#Install
RUN yum install -y ~/progr/test-task-0.0.1-1.el7.noarch.rpm

#Delete dir and file
RUN cd ../ && \
	rm -r ~/progr

CMD ["test-task"]
