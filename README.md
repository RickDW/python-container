# Python development container

Personal docker container for python development. Ubuntu based; all images include python 3.6 and git. Pre-built images
can be found at hub.docker.com/r/rickdw/pydev. 

The base directory contains the base image, containing just python 3.6 and git. 

The data directory contains the data image, which is based on the base image. It comes with additional python libraries:
pymongo (a MongoDB driver), a host of scipy libraries and other data science tools, and finally a basic version of 
tensorflow. 