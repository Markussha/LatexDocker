FROM ubuntu

#refresh system
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade

#Install important tex packages
RUN ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
RUN apt-get install -y texlive-full biber sudo curl

#install docker for runner containers
RUN apt-get install -y docker

#install gitlab runner
RUN curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | bash
RUN apt-get -y update
RUN apt-get install -y gitlab-runner

ENTRYPOINT ["bash", "gitlab-runner", "run"]
