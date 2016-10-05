require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "pry"
require "sinatra"
require "sinatra/reloader"
require "active_record" # the ORM


require_relative "db/connection"
require_relative "models/pokemon"

get "/pokemons" do
  @pokemons = Pokemon.all
  erb :"pokemon/index"
end

get "/pokemons/new" do
  erb :"pokemon/new"
end

get "/pokemons/:id/edit" do
  @pokemons = Pokemon.find(params[:id])
  erb :"pokemon/edit"
end

put "/pokemons/:id" do
  @pokemons = Pokemon.find(params[:id])
  @pokemons.update(params[:pokemon])
  redirect "/pokemons"
end

get "/pokemons/:id" do
  @pokemons = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

post "/pokemons" do
  Pokemon.create(params[:pokemon])
  redirect "/pokemons"
end

delete "/pokemons/:id" do
  @pokemons = Pokemon.find(params[:id])
  @pokemons.destroy
  redirect "/pokemons"
end




# binding.pry
