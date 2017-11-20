class CarController < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), "..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
     register Sinatra::Reloader
  end


  get "/cars" do

    @title = "Car homepage"
    @cars = Car.all

    erb :'cars/index'

  end


end
