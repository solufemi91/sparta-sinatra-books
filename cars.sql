DROP TABLE IF EXISTS cars;

CREATE TABLE cars (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT

);

insert into cars (title,body,image) values ('BMW','This is the first post','https://www.autocar.co.uk/sites/autocar.co.uk/files/bmw-1-series-2015-rt-021.jpg');

insert into cars (title,body,image) values ('Mercedes','This is the second post','http://www.telegraph.co.uk/content/dam/motoring2/2015/12/03/mercedes-s-class-coupe-main-xlarge_trans_NvBQzQNjv4BqrWYeUU_H0zBKyvljOo6zlkYMapKPjdhyLnv9ax6_too.jpg');

insert into cars (title,body,image) values ('Jaguar','This is the third post','http://www.stratstone.com/images/brands/jaguar/234379/new-jaguar-xe-red?view=Standard');
