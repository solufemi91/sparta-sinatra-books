class Post
  attr_accessor :id, :title, :body, :image

  # Save is an instance method that we can use to create or update a post
  def save


    conn = Post.open_connection


    if(self.id)
      sql = "UPDATE bookposts SET title='#{self.title}', body='#{self.body}', image='#{self.image}' WHERE id = #{self.id}"

    else
      sql = "INSERT INTO bookposts (title, body, image) VALUES ('#{self.title}', '#{self.body}',' #{self.image}')"
    end


    conn.exec(sql)
  end


  def self.open_connection

    conn = PG.connect(dbname: "blog")
  end


  def self.all


    conn = self.open_connection


    sql = "SELECT id,title,body,image FROM bookposts ORDER BY id DESC"


    results = conn.exec(sql)


    posts = results.map do |post|
      self.hydrate(post)
    end

  end


  def self.find(id)


    conn = self.open_connection


    sql = "SELECT * FROM bookposts WHERE id =#{id} LIMIT 1"


    posts = conn.exec(sql)


    post = self.hydrate(posts[0])


    post

  end


  def self.destroy(id)


    conn = self.open_connection


    sql = "DELETE FROM bookposts WHERE id = #{id}"


    conn.exec(sql)

  end


  def self.hydrate(post_data)


    post = Post.new


    post.id = post_data['id']
    post.title = post_data['title']
    post.body = post_data['body']
    post.image = post_data['image']

    post
  end



end
