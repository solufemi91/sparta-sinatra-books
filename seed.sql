ROP TABLE IF EXISTS booksPost;

CREATE TABLE booksPost (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT
  image TEXT

);

insert into booksPost (title,body,image) values ("A Streetcar Named Desire","This is the first post","https://i.ebayimg.com/images/g/03IAAOSw4CFY0L30/s-l300.jpg");
insert into booksPost (title,body,image) values ("To Kill a MockingBird", "This is the second post", "https://ritikab.files.wordpress.com/2010/07/tokillamockingbird3.jpg");
insert into booksPost (title,body,image) values ("1000 Years of Solitude","This is the third post","https://images-na.ssl-images-amazon.com/images/I/41NpPQ3HNqL._SL300_.jpg");
