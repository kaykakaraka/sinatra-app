require 'sinatra'
require 'sinatra/reloader' if development?

get "/" do
  "hello!"
end

get "/secret" do
  "ha ha ha"
end

get "/magpies" do
  "magpies!"
end

get "/random_cat" do
  @cat_name = ["Almond", "Misty", "Amigo"].sample()
  erb(:index)
end

post "/named_cat" do
  p params
  @cat_name = params[:name]
  erb(:reveal_cat)
end

get "/name_cat" do
  erb(:index)
end