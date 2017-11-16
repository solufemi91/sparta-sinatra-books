class BooksController < Sinatra::Base

 set :root, File.join(File.dirname(__FILE__), "..")
 set :views, Proc.new { File.join(root, "views") }

 configure :development do
    register Sinatra::Reloader
 end

 get "/" do
    @title = "Books Homepage"
    erb :'books/home'
 end


 get "/books" do
   @title = "The books page"
   erb :'books/index'
 end

 get "/books/new" do

    "New books form"

 end


 post '/books' do

    "CREATE"

 end




end
