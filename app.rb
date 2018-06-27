require 'sinatra'
get '/' do
  "Hello World"
end
get '/secret' do
  "Elishka is better than Bradley Wiggins"
end
get '/bikes' do
  "I am Elishka's spirit animal |<8"
end

get '/random-cat' do
  @name = ["Bibi", "Elishka", "Bike", "Frog"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end 
