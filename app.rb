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
  "<div style='border: dashed red'>
  <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end