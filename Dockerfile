FROM gitlab/gitlab-runner

#refresh system
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade

#Install important tex packages
RUN ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
RUN apt-get install -y texlive-full biber sudo curl

ENTRYPOINT ["/usr/bin/dumb-init", "/entrypoint"]
CMD ["run", "--user=gitlab-runner", "--working-directory=/home/gitlab-runner"]
