#!/bin/bash

cd /app
bundle config set path /gems
bundle install
bundle exec rails db:migrate
bundle exec rails server -b 0.0.0.0
