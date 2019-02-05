#!/bin/bash
set -e 

/usr/bin/mysqldump -h $DB_HOST --protocol=tcp -u $DB_USERNAME --password="$DB_PASSWORD" $DB_NAME > $DUMP_PATH
echo "Dumped database to file"