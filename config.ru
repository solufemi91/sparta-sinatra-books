require 'sinatra'
require "sinatra/reloader" if development?
require_relative './controllers/books_controllers.rb'

run BooksController
