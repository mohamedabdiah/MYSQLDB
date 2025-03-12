create table students(
  id int primary key,
  name text not null,
  phone int unique,
  city text not null,
  createdAt timestamp default current_timestamp,
  age int check(age>=15)
)


-- foreign key
create table customers(
  customerid int primary key,
  name text,
  phone int
)

create table orders (
  orderid int primary key,
  orderNumber int,
  customerid int,
  constraint fk_customerid foreign key(customerid) references customers(customerid)
)
