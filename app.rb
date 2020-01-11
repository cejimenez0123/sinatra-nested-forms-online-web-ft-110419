require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    get '/new' do
      erb :'pirates/new'
    end
    post '/pirates' do
      @pirate=Pirate.new
      @pirate.name = params[:name]
      @pirate.height = params[:height]
      @pirate.weight = params[:weight]
      erb :'pirates/show'
      binding.pry

    end
    end
end
