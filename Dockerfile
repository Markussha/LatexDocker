FROM ubuntu

#Install important tex packages
RUN apt-get -y update
RUN apt-get install -y texlive-full biber

#install docker for runner containers
RUN apt-get install -y docker

#install gitlab runner
RUN curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
RUN sudo apt-get install gitlab-runner


