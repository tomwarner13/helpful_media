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
end

