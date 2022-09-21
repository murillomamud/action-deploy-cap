FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install wget
RUN wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add - echo "deb https://packages.cloudfoundry.org/debian stable main" |  tee /etc/apt/sources.list.d/cloudfoundry-cli.list
RUN apt-get -y install cf7-cli
RUN cf -v

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]