FROM php:7.4-cli
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update \
    && apt-get install git
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]