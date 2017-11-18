require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/booksPost.rb'
require_relative './controllers/books_controllers.rb'

use Rack::MethodOverride

run BooksController
