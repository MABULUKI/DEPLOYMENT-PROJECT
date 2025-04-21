#!/bin/bash

LOG_FILE="/var/log/backup.log"
DATE=$(date +%F)
API_DIR="/home/ubuntu/DEPLOYMENT-PROJECT"
BACKUP_DIR="/home/ubuntu/backups"
DB_NAME="civedb"
DB_USER="postgres"
DB_BACKUP="$BACKUP_DIR/db_backup_$DATE.sql"

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/api_backup_$DATE.tar.gz $API_DIR

PGPASSWORD=mamabaraka0909 pg_dump -U $DB_USER $DB_NAME > $DB_BACKUP

find $BACKUP_DIR -type f -mtime +7 -exec rm {} \;

if [ $? -eq 0 ]; then
  echo "[$DATE] Backup completed successfully." >> $LOG_FILE
else
  echo "[$DATE] Backup failed!" >> $LOG_FILE
fi
