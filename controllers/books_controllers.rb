class BooksController < Sinatra::Base

 set :root, File.join(File.dirname(__FILE__), "..")
 set :views, Proc.new { File.join(root, "views") }

 configure :development do
    register Sinatra::Reloader
 end


 get "/" do
   @title = "The books page"

   @posts = Post.all
   erb :'books/index'
 end

 get "/new" do

   @title = "The new books form"

   @post = Post.new

   erb :'books/new'

 end

 get '/:id' do

   id = params[:id].to_i

   @post = Post.find(id)

   erb :'books/show'

  end

 post '/' do

   post = Post.new

   post.title = params[:title]

   post.body = params[:body]

   post.image = params[:image]

   post.save

   redirect "/"
  end

  put '/:id'  do

    id = params[:id].to_i

    post = Post.find(id)

    post.id = params[:id]

    post.title = params[:title]

    post.body = params[:body]

    post.image = params[:image]

    post.save

    redirect '/'

  end


 get '/:id/edit'  do
   @title = "The edit books form"

   id = params[:id].to_i

   @post = Post.find(id)

   erb :'books/edit'

 end

 delete '/:id'  do

  id = params[:id].to_i

  Post.destroy(id)

  redirect "/"

 end


end
