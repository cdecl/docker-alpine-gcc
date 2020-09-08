FROM centos:7

RUN alias ll='ls -l'
RUN yum install centos-release-scl epel-release -y
RUN yum install devtoolset-9-gcc-c++ devtoolset-9-make cmake3 tzdata boost169-devel openssl-devel -y

RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN ln -s /usr/include/boost169/boost /usr/include/boost

RUN echo 'source /opt/rh/devtoolset-9/enable' >> ~/.bashrc
RUN echo 'export LIBRARY_PATH=/usr/lib64/boost169:$LIBRARY_PATH' >> ~/.bashrc

CMD /bin/bash
