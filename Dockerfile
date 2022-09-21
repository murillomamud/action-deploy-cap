FROM ppiper/cf-cli



RUN cf version
WORKDIR /app


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]