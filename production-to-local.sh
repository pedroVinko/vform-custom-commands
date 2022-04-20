#!/bin/bash

echo -e "_______________________________________________________________________________\n"
echo -e "| This command is to make and download a dump file backup from your Heroku app |\n"
echo -e "_______________________________________________________________________________\n"

read -p 'Heroku git remote name: ' remote_name

heroku pg:backups:download -r $remote_name

read -p 'Local database name: ' local_db
read -p 'Dump file name (include extention): ' dump_file_name

pg_restore --verbose --clean --no-acl --no-owner -h localhost -d $local_db $dump_file_name
