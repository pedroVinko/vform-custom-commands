#!/usr/bin/bash

heroku pg:backups:capture -a vform-production

read -p 'Heroku backup ID: ' backup_id

heroku pg:backups:url $backup_id -a vform-production
