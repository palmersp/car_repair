# README

Make sure Postgres is installed on your OS.

Clone Repository.

Create the user in Postgres:
`create role car_repair with createdb login password 'carpass';`

Setup the database:
`rake db:setup`

In terminal run:
`rails server`

Navigate to **localhost:3000** in your browser.
