FROM ppiper/cf-cli


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]