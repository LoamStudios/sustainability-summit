# clean the database
rake db:drop
rake db:setup

# Generate the migration sql
erb -r securerandom lib/data/db.sql.erb > lib/data/migrate.sql
# Load the sql into the db
psql -d mit_summit_development -f lib/data/migrate.sql

# import the photos
rails runner lib/data/migration.rb
