require 'sinatra'

get '/' do
  erb :index
#  "Welcome to Helpful Media! Learn about us <a href=\"/about\">here!</a>"
end

get '/about' do
  "we're pretty cool"
end
  
