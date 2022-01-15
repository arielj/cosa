# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Ruby version

2.6.9 (we should use 2.7.x)

## System dependencies

Ruby
NodeJS (version 14 ideally if webpack complains about something)

## Configuration

### Database

Copy `config/database.yml.sample` as `config/database.yml` and set up the database

### ENV variables

Copy `.env.local.sample` as `.env.local` and set env variables.

`GITHUB_*` variables are not needed during development, the `log in with developer` method can be used if needed
`SUPER_ADMIN_EMAILS` is a white-space-separated list of emails that will be considered `super admins`. Super admin users are created during login and have the role with the most permissions.

## Database creation

Run `rails db:setup`. This will create the databases, run migrations and seeds.

## How to run the test suite

Run `rails spec`.

## Run the app

Run `rails s` to start the server.
Navigate to `/cosa` to open the dashboard/login.
Navigate to `/new_application` to show a basic no application form.
