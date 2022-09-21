FROM ppiper/cf-cli



RUN cf version
WORKDIR /app
RUN mkdir github/home
RUN chown -R admin:admin github/home
RUN chmod 755 /github/home
USER admin
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]