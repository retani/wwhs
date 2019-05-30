heroku pg:backups:capture --app wwhs
heroku pg:backups:download --app wwhs
pg_restore --verbose --clean --no-acl --no-owner -h localhost -d wwhs/development /tmp/latest.dump