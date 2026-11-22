#!/bin/bash
# Hourly backup of /var/www/html from A to B. Runs as root from cron.
# Streams a tar.gz over SSH. B's restricted key writes a timestamped archive.
set -o pipefail
LOG=/var/log/web-backup.log
if tar -czf - -C /var/www html | ssh -i /root/.ssh/backup_key -o BatchMode=yes -o StrictHostKeyChecking=accept-new backupuser@192.168.1.74; then
  echo "$(date -Is) SUCCESS" >> "$LOG"
else
  echo "$(date -Is) FAILURE" >> "$LOG"
  exit 1
fi
