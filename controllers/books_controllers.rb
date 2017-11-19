class BooksController < Sinatra::Base

 set :root, File.join(File.dirname(__FILE__), "..")
 set :views, Proc.new { File.join(root, "views") }

 configure :development do
    register Sinatra::Reloader
 end

 $books = [{
 id: 0,
 title: "A Streetcar Named Desire",
 body: "This is the first post",
 image: "https://i.ebayimg.com/images/g/03IAAOSw4CFY0L30/s-l300.jpg"

},
{
  id: 1,
  title: "To Kill a MockingBird",
  body: "This is the second post",
  image: "https://ritikab.files.wordpress.com/2010/07/tokillamockingbird3.jpg"
},
{
  id: 2,
  title: "1000 Years of Solitude",
  body: "This is the third post",
  image: "https://images-na.ssl-images-amazon.com/images/I/41NpPQ3HNqL._SL300_.jpg"
}]



 get "/" do
   @title = "The books page"
   @books = $books
   erb :'books/index'
 end

 get "/new" do

    @title = "The new books form"
    erb :'books/new'

 end

 get "/:id" do

   id = params[:id].to_i
   @book = $books[id]

   erb :'books/show'
 end

 get '/:id/edit'  do


  erb :'books/edit'

end





end
