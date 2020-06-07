# SehatQ

## Prerequisites
* Ruby
* Rails
* PostgreSQL

## Setup Repo
* clone into your chosen folder (eq : `~/works/`)
* `$ cd ~/works/sehatQ`
* `$ bundle install`
* `$ rake db:create`
* `$ rake db:migrate`

## Setup for Facebook Login
* register to https://developers.facebook.com/ , create an App called 'sehatQ'.
* on https://developers.facebook.com/apps/YOUR_APP_ID/settings/basic/, set the Site URL to `http://localhost:3000/`
* copy the `App ID` and `App Secret`
* rename file `~/sehatQ/config/application.yml.tmp` into `~/sehatQ/config/application.yml`
* open the `~/sehatQ/config/application.yml`, replace the `facebook_app_id` and `facebook_secret` values with your `App ID` and `App Secret` from the previous step.

## Run the Apps :
* `$ rails s`

### - Thank You -
