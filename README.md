# README

Make sure Postgres is installed on your OS.

Create the user:
`create role car_repair with createdb login password 'carpass';`

Setup the database:
`rake db:setup`

In terminal run:
`rails server`

Navigate to **localhost:3000** in your browser.
