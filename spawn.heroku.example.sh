#!/bin/bash

# You'll need the heroku gem and GIT installed to do this.

# Create a heroku app
heroku create

# Push master branch to heroku
git push heroku master

# Show your newly spawned site in the browser if you 
heroku open