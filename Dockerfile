FROM ubuntu:latest



RUN apt-get update
RUN apt-get install -y gnupg2
RUN apt-get install -y curl
RUN apt install snapd
RUN snap install cf-cli
RUN cf version


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]