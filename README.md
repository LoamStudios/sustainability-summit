# MIT Sustainability Summit

## Data Migration

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

## Deploy to VM

The app can also be deployed to a VM on anyone of the cloud providers using
Capistrano. The easiest way to setup a VM is to follow the [GoRails
Guide](https://gorails.com/deploy/ubuntu/14.04). If you use CentOS or RHEL,
you'll need to find a way to workaround SELinux. Passenger doesn't play nice
with it.

## Deploying to Heroku

Add `gem 'aws-sdk-v1` to the gemfile and add the following snippet to the
paperclip configuration block in `config/environments/production.rb`:

```
:storage => :s3,
:s3_credentials => {
:bucket => ENV['S3_BUCKET_NAME'],
:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
}
```
Don't forget to remove ':storage => :filesytem'. You can only have one entry

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

