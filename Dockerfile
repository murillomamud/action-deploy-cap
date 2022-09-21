FROM ppiper/cf-cli



RUN cf version
RUN mkdir github/home
WORKDIR /github/home


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]