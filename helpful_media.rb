require 'rubygems'
require 'sinatra/base'
require 'haml'

class HelpfulMedia < Sinatra::Base
  get '/' do
    haml :index
  end

  get '/about' do
    haml :about
  end

  get '/faq' do
    haml :faq
  end

  get '/people' do
    haml :people
  end

  get '/people/:name' do
    @person = params["name"]
    haml :person 
  end

  not_found do
    haml :notfound
  end
end

