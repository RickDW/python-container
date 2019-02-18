FROM ubuntu:18.04

# software-properties-common enables the command add-apt-repository to be run
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update -y

# install python 3, git, and some compile tools (??)
RUN apt-get install -y build-essential python3.6 python3-pip git

# update pip (also enables pip instead of pip3)
RUN pip3 install pip --upgrade