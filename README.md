# MIT Sustainability Summit

## Deployment and Data Migration

For the time being the site is deployed on Heroku.

To migrate from the data in the old site run

```
$ ./bin/migrate
```

This script assumes the following files will existing. These are not shared
publicly at the moment.

```
lib
├── data
│   ├── db-person
│   ├── db-sponsor
│   ├── db.sql.erb
│   ├── migrate.sql
│   ├── migration.rb
│   └── photos
```

`./bin/migrate` drops the current development database, sets it up, loads the
old data from a sql file. The sql file is processed by ERB to dynamically add
data for columns with null constraints. After the db is loaded, using `rails r`,
the images are loaded from `db-person`, `db-sponsor`, and `photos`. This script
looks for a record with the corresponding id as the file name and updates the
record. On save, the image is processed by paperclip and stored in
`public/system`.

## Syncing with Heroku

Running
```
$ ./bin/heroku-sync
```

copies the development database to Heroku and syncs the images in
`public/system` with AWS. The AWS sync requires you to have the `awscli`
installed and configured with your bucket:

```
S3_BUCKET_NAME
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

