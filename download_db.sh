heroku pgbackups:capture --expire --app wwhs
curl -o /tmp/latest.dump `heroku pgbackups:url --app wwhs`
pg_restore --verbose --clean --no-acl --no-owner -h localhost -d wwhs/development /tmp/latest.dump