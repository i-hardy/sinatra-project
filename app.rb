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
  @catpic = ["http://f.cl.ly/items/0k0v3e2X3l2f3i1n1Y19/Screen%20Shot%202013-09-10%20at%2011.32.00.png",
  "https://static.pexels.com/photos/127028/pexels-photo-127028.jpeg"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  @catpic = ["http://f.cl.ly/items/0k0v3e2X3l2f3i1n1Y19/Screen%20Shot%202013-09-10%20at%2011.32.00.png",
  "https://static.pexels.com/photos/127028/pexels-photo-127028.jpeg",
  "http://www.readersdigest.ca/wp-content/uploads/2011/01/4-ways-cheer-up-depressed-cat.jpg",
  "https://pbs.twimg.com/profile_images/378800000532546226/dbe5f0727b69487016ffd67a6689e75a.jpeg"].sample
  erb(:index)
end
