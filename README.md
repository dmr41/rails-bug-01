# Rails Practice

My Rationale:

The first part of the problem was getting to the Bug itself.

This required  figuring out how to go to acutally login.
Once I was in the rspec test file found a default email and password that is
loaded.

Then the  - time_ago_in_words(quote.created_at) error arrived.

Looking at the database entry for quotes revealed that the first two dates
were empty/nil.  

Corrected the default state of future nil created_at values by setting
created-at to default state of Time.now.
However, the first two entries in the database were not retroactively set to
Time.now.  

After trying to figure out how to retroactively use ActiveRecord to update
the database through migration, decided to simply change the first two records
in the database through the rails console.  Evan walked me through how to make
specific changes in rails c which emphasized that I should be more comfortable
in the rails c environment.

## Setup

* `bundle`
* `rake db:create db:migrate`
* `psql -d g2-rails-bug-01-development -f db/production.sql`
* `rails s`

You can run specs with:

* `rspec`

## Stories

One of your clients tells you that their site it totally broken.  
You download the app and run it locally and it seems fine, so you decide to pull in production data (see above).

Your job is to find and fix the bug.

What happens now:

* You login
* It blows up

What should happen:

* You login
* You see this page:

<img src="project/success.png" />
