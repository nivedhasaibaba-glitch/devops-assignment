#!/bin/bash

DATE=$(date +%F)

tar -czvf /backups/apache_backup_$DATE.tar.gz /etc/apache2/ /var/www/html/

echo "Backup Verification" >> /backups/apache_backup_log.txt
tar -tzf /backups/apache_backup_$DATE.tar.gz >> /backups/apache_backup_log.txt
