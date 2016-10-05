require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "pry"
require "sinatra"
require "sinatra/reloader"
require "active_record" # the ORM


require_relative "db/connection"
require_relative "models/pokemon"
require_relative "models/trainer"

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

get "/trainers" do
  @trainers = Trainer.all
  erb :"trainer/index"
end

get "/trainers/:id/edit" do
  @trainers = Trainer.find(params[:id])
  erb :"trainer/edit"
end

get "/trainers/new" do
  erb :"trainer/new"
end

put "/trainers/:id" do
  @trainers = Trainer.find(params[:id])
  @trainers.update(params[:trainer])
  redirect "/trainers"
end

get "/trainers/:id" do
  @trainers = Trainer.find(params[:id])
  erb :"trainer/show"
end

post "/trainers" do
  Trainer.create(params[:trainer])
  redirect "/trainers"
end

put "/trainers/:id" do
  @trainers = Trainer.find(params[:id])
  @trainers.update(params[:trainer])
  redirect "/trainers"
end

delete "/trainers/:id" do
  @trainers = Trainer.find(params[:id])
  @trainers.destroy
  redirect "/trainers"
end



# binding.pry
