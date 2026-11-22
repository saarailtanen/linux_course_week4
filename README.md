# Week 4: server cloning, backups and MariaDB replication

Server A (Week 2 Flask counter) and server B (clone, read-only replica) on cPouta.

- backup/backup-www.sh: hourly backup script run on A
- cron/: cron files for A (hourly backup) and B (7-day retention)
- replication/: sanitised MariaDB config for A and B and the replication setup SQL (placeholders only)
- app/viikko4/: B's read-only Flask page (SELECT only) and its documentation text
- docs/authorized_keys.example: the restricted SSH key line on B

No passwords, private keys, SQL dumps or backup archives are stored here.
