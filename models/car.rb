class Car
  attr_accessor :id, :title, :body, :image

  def save


    conn = Car.open_connection


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


    sql = "SELECT id,title,body,image FROM cars ORDER BY id DESC"


    results = conn.exec(sql)


    cars = results.map do |car|
      self.hydrate(car)
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


  def self.hydrate(car_data)


    car = Car.new


    car.id = car_data['id']
    car.title = car_data['title']
    car.body = car_data['body']
    car.image = car_data['image']

    car
  end



end
