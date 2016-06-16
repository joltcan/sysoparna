#!/bin/bash
backupdir=/db/backup/psql
backupfile="$backupdir/postgresql.sql.bz2"
if [ ! -d $backupdir ]; then mkdir -p $backupdir ; fi
chown postgres $backupdir
sudo -u postgres sh -c "cd /tmp; pg_dumpall | pbzip2 > $backupfile"
chmod 0640 $backupfile
