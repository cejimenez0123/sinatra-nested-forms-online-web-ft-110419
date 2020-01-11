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

      @pirate=Pirate.new(params[:pirate])

      params[:pirates][:ships].map do |t|
          Ship.new(t)
          binding.pry
        end


      erb :'pirates/show'


    end
    end
end
