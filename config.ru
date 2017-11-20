require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/post.rb'
require_relative './models/car.rb'
require_relative './controllers/books_controllers.rb'
require_relative './controllers/car_controller.rb'

use Rack::MethodOverride

# run BooksController

run CarController
