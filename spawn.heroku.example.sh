#!/bin/bash

APPNAME = 'Testerino'

# Install Heroku gem
sudo gem install heroku

# Create a heroku app
heroku create $APPNAME

# Add your custom domain // comment this out if tou don't want to hook up your domain yet
heroku domains:add "$APPNAME.com"

# Push master branch to heroku
git push heroku master

# Show your newly spawned site in the browser if you 
open "http://$APPNAME.heroku.com"

# If you have your domain setup use this line to open the site
# open "http://$APPNAME.com"