# Custom shell comands for Vform

To use these scripts you must give them permissions to be executable

```sh
$ sudo chmod 777 my_script_file
```

If you want them to be executable without having to call them with their absolute path you can  move them into the `/usr/bin/` file.


## Custom commands

* `download-backup.sh` -> Downloads and generate the Heroku backup link to be downloaded

* `production-to-local.sh` -> Downloads a dump file backup from **the last Heroku backup** and restores it in a local database


## Download a certain Heroku backup
heroku pg:backups:download -a your-app-name <backup_id>
