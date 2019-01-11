FROM ubuntu

#Install important tex packages
RUN apt-get -y update
RUN apt-get install -y texlive-full biber
