class BooksController < Sinatra::Base

 set :root, File.join(File.dirname(__FILE__), "..")
 set :views, Proc.new { File.join(root, "views") }

 configure :development do
    register Sinatra::Reloader
 end

 $photos = [{
 id: 0,
 title: "Book 1",
 body: "This is the first post",
 image: "http://fillmurray.com/300/300"

},
{
  id: 1,
  title: "Book 2",
  body: "This is the second post",
  image: "http://fillmurray.com/300/300"
},
{
  id: 2,
  title: "Book 3",
  body: "This is the third post",
  image: "http://fillmurray.com/300/300"
}]

 get "/" do
    @title = "Books Homepage"
    erb :'books/home'
 end


 get "/books" do
   @title = "The books page"
   @photos = $photos
   erb :'books/index'
 end

 get "/books/new" do

    "New books form"

 end


 post '/books' do

    "CREATE"

 end




end
