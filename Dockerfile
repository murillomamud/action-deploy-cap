FROM ppiper/cf-cli



RUN cf version
RUN mkdir test
WORKDIR /test


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]