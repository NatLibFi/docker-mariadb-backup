#!/bin/bash
set -e 

DUMP_FILE=$DUMP_DIRECTORY/`date +%d%m%yT%H%M.sql`

echo -n "Dumping database to ${DUMP_FILE}..."
/usr/bin/mysqldump -h $DB_HOST --protocol=tcp -u $DB_USERNAME --password="$DB_PASSWORD" $DB_NAME > $DUMP_FILE 
echo "Done."
