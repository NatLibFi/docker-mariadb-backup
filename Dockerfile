FROM mariadb:10
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/cron", "-f"]

ENV DB_HOST db
ENV DUMP_PATH /data/dump.sql

COPY entrypoint.sh /
COPY dump-db.sh /

RUN apt-get update && apt-get upgrade -y \
    && apt-get install cron && apt-get clean \
    && rm -rf /etc/cron* && mkdir /etc/cron.d \
    && rm -rf /build /tmp/* /var/cache/
