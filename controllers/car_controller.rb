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


  get "/cars/new" do

    @title = "The new cars form"

    @car = Car.new

    erb :'cars/new'

  end

  get '/cars/:id' do

    id = params[:id].to_i

    @car = Car.find(id)

    erb :'cars/show'

  end

  # post '/' do
  #
  #   car = Car.new
  #
  #   car.title = params[:title]
  #
  #   car.body = params[:body]
  #
  #   car.image = params[:image]
  #
  #   post.save
  #
  #   redirect "/"
  #
  #
  #  end


end
