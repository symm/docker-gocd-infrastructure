FROM phusion/baseimage:0.9.19

RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y -q unzip openjdk-8-jre-headless git mercurial subversion

RUN mkdir /etc/service/go-agent
ADD gocd-agent/go-agent-start.sh /etc/service/go-agent/run

ADD https://download.go.cd/binaries/16.6.0-3590/deb/go-agent-16.6.0-3590.deb /tmp/go-agent.deb

WORKDIR /tmp
RUN dpkg -i /tmp/go-agent.deb
RUN sed -i -e 's/DAEMON=Y/DAEMON=N/' /etc/default/go-agent

RUN apt-get install -y -q php7.0-cli php7.0-common php7.0-curl php7.0-fpm php7.0-json php7.0-mbstring php7.0-opcache php7.0-readline
RUN apt-get install -y -q make wget

ADD get-composer.sh /tmp/get-composer.sh
RUN /tmp/get-composer.sh

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/sbin/my_init"]
