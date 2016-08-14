require 'rubygems'
require 'sinatra/base'
require 'haml'

class HelpfulMedia < Sinatra::Base
  get '/' do
    @title = "Home"
    haml :index
  end

  get '/about' do
    @title = "About Us"
    haml :about
  end

  get '/faq' do
    @title = "Frequently Asked Questions"
    haml :faq
  end

  get '/people' do
    @title = "People"
    haml :people
  end

  get '/people/:name' do
    @person = params["name"]
    @title = @person
    haml :person 
  end

  get '/contact' do
    @title = "Contact Us"
    haml :contact
  end

  not_found do
    @title = "404"
    haml :notfound
  end
end

