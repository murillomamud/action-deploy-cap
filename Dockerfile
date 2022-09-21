FROM ppiper/cf-cli



RUN cf version


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]