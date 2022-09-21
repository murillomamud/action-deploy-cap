FROM ppiper/cf-cli


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]