#!/bin/bash
set -e 

echo -n "Dumping database to file ${DUMP_DIRECTORY}..."
/usr/bin/mysqldump -h $DB_HOST --protocol=tcp -u $DB_USERNAME --password="$DB_PASSWORD" $DB_NAME > $DUMP_DIRECTORY/`date +%d%m%yT%H%M.sql`
echo "Done."
