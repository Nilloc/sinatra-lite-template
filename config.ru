require 'bundler'
Bundler.require
require 'sinatra'
require './app.rb'
run Sinatra::Application
