create table author(
      authorid serial primary key,
      authorname text not null,
      age int check(age>=15) not null,
      phone int unique
)

create table books(
      bookid serial primary key,
      bookName text not null,
      genre text not null,
      publisherYear int not null,
      authorid int,
      constraint fk_authorid FOREIGN key(authorid) references author(authorid)
);

-- insert author
select *from author;
insert into author(authorname,age,phone)
values
('xirsi x. cali xasan',50,4444444),
('kamaal ali ',36,2223232),
('muuna deeqsi',33,66754333),
('maxamed xaaji ingiris',44,9987654),
('Nacat zazmas',56,998888),
('aadan duaale',78,7654324);

-- inser books
select *from books;
insert into books(bookname,genre,publisheryear,authorid)
VALUES
('miyi ilaa madaxtooyo','sheeko',2019,7),
('wadadii cadayd','sheeko faneed',1990,3),
('afgambigii dhicisoobay','wadaniyad',2017,8),
('africay hurudooy','suugaaned',2000,2),
('nairabo iyo waayeed','dhacdooyin',2008,4),
('xoolo raacid','miyi',2015,11);

-- inner join 
select *from author
inner join books on author.authorid = books.authorid

