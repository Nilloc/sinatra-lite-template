#!/bin/bash

# APPNAME = 'myapp'

# Install Heroku gem
sudo gem install heroku

# Create a heroku app
heroku create $APPNAME

# Push master branch to heroku
git push heroku master

# Show your newly spawned site in the browser if you 
heroku open

# If you have your domain setup use this line to open the site
# open "http://$APPNAME.com"