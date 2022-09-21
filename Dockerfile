FROM ppiper/cf-cli



RUN cf version
RUN chmod 777

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]