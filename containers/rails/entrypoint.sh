#!/bin/bash

cd /usr/src/app

bundle install
rake db:migrate
rake db:setup
rake assets:precompile
rake solvency:liability_proof

rails s -b 0.0.0.0

tail -f /dev/null
