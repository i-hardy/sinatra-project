require "sinatra"
require "shotgun"

get '/' do
  "Hello World"
end

get '/secret' do
  "shhh!"
end

get '/meow' do
  "I DEMAND TREATS!!"
end

get '/cat' do
  send_file"cat.html"
end
