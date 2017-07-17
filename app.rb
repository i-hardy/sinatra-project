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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end
