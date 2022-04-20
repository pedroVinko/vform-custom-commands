#!/usr/bin/bash

read -p 'Heroku app name: ' heroku_app

heroku pg:backups:capture -a $heroku_app

read -p 'Heroku backup ID: ' backup_id

heroku pg:backups:url $backup_id -a $heroku_app
