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

get "/cat" do
  @cat_name = ["Almond", "Misty", "Amigo"].sample()
  erb(:index)
end