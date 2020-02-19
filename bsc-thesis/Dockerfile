FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install -y python3.6 python3-pip git

# update pip (also enables pip instead of pip3)
RUN pip3 install pip --upgrade

# install python libraries
RUN pip install numpy scipy matplotlib tensorflow gym
