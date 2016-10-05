require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "pry"
require "sinatra"
require "sinatra/reloader"
require "active_record" # the ORM


require_relative "db/connection"
require_relative "models/pokemon"
require_relative "models/trainer"



binding.pry
