# docker build -t ubuntu1804py36
FROM ubuntu:18.04

# software-properties-common enables the command add-apt-repository to be run
RUN apt-get update && \
        apt-get install -y software-properties-common && \
        add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update -y

# install python 3, some compile tools (??), and git
RUN apt-get install -y build-essential python3.6 python3-pip && \
        apt-get install -y git

# update pip (also enables pip instead of pip3)
RUN pip3 install pip --upgrade

# install python libraries
RUN pip install tensorflow numpy scipy matplotlib ipython jupyter pandas sympy nose sklearn

# expose port 8888 to the host, e.g. for running a jupyter notebook out of a container
EXPOSE 8888