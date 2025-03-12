create table author(
      authorid serial primary key,
      authorname text not null,
      country text not null,
      age int check(age>=20) not null
);

create table books(
      bookid serial primary key,
      title text not null,
      genre text not null,
      authorid int,
      constraint fk_authorid foreign key(authorid) references author(authorid) 
);

create table hib(
      hibid serial primary key,
      location text not null,
      phone int unique not null,
      manager text not null,
      authorid int,
      FOREIGN key (authorid) references author (authorid )
)

alter table hib add name text not null;
select *from hib


insert into author(authorname,country,age)
VALUES('Muuna Deeqsi','somalia',24);

select *from author;
select *from books;
select *from hib;

insert into books(title,genre,authorid)
values('sheekadii cigaal shiidaad','sheeko faneed',3)

insert into hib(location,phone,manager,authorid,name)
values('Hargeisa',543324,'Jaamac Muuse Jaamac',2,'HCC')
insert into hib(location,phone,manager,authorid,name)
values('mogadisho',613244,'Abdulle aadan yabarow',3,'Mog')
