FROM ubuntu:latest


RUN apt-get update
RUN apt-get install -y wget
RUN wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
RUN echo "deb http://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list
RUN apt-get update
RUN apt-get install cf-cli
RUN cf --version




COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]