## Setup instructions

To setup the application, make sure you have Ruby 2.4.2 installed with the bundler gem (gem install bundler).

This will run the following:

```bash
bundle install # to seed all the gems
rake db:create # Setup the database
rake db:migrate # Migrates the database
RAILS_ENV=test rake db:migrate # Migrates the database
rake db:seed # Seeds the database with some sample data.
```

Once completed you should be able to start the application using `rails s`
