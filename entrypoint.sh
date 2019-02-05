#!/bin/sh
set -e

DUMP_DIR=`dirname $DUMP_PATH`


if [ -z "$CRON_PERIOD" ];then
  echo "CRON_PERIOD is not defined"
  exit 1
fi

if [ ! -d "$DUMP_DIR" ];then
  echo "Directory $DUMP_DIR does not exist"
  exit 1
fi

echo "$CRON_PERIOD DB_HOST=$DB_HOST DB_USERNAME=$DB_USERNAME DB_PASSWORD=$DB_PASSWORD DB_NAME=$DB_NAME DUMP_PATH=$DUMP_PATH /dump-db.sh 1>/proc/1/fd/1 2>&1" > /crontab
crontab /crontab

echo "Wrote crontab"
exec $@