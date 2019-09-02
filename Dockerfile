FROM ubuntu:18.04
RUN apt-get update && apt-get install sudo git -y
ADD . cluster
WORKDIR cluster
RUN ./provision.sh
