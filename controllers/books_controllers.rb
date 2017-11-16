class BooksController < Sinatra::Base

 set :root, File.join(File.dirname(__FILE__), "..")
 set :views, Proc.new { File.join(root, "views") }

 configure :development do
    register Sinatra::Reloader
 end

 get "/" do
   "This is my homepage"
    erb :'books/home'
 end


 get "/books" do
   "This is the books page"
 end

 get "/books/new" do

    "New books form"

 end

 # get "/books/:id" do
 #
 #    id = params[:id]
 #    @book = $books[id]
 #
 #
 # end

 post '/books' do

    "CREATE"

 end

 # put '/books/:id'  do
 #
 #  "UPDATE: #{params[:id]}"
 #
 # end

 # delete '/books/:id'  do
 #
 #    "DELETE: #{params[:id]}"
 #
 # end

 # get '/books/:id/edit'  do
 #
 #    "EDIT: #{params[:id]}"
 #
 #
 # end


end
