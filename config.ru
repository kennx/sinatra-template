require 'rubygems'
require 'bundler'
Bundler.require
require './app'
map('/') { run MyApp }