create table person(
id serial primary key,
name text,
age int ,
salary int
);

insert into person(name,age,salary)
values
('salma',12,900),
('adam',14,100),
('warda',55,95000),
('maxamed',34,1200),
('axmed',22,4500),
('muniir',45,50),
('yaxye',65,87000);

select *from person;

-- count
select count(id) as dhamaan_wadarta_guud from person;
-- sum
select sum(salary) as wadarta_guud_mushaharadka from person;
-- max
select max(salary) from person;

-- min 
select min(salary) from person;

-- avg
select avg(salary) from person;

-- Group By
select name, max(salary) from person  group by name;

-- HAVING
select name, sum(salary) from person GROUP by name  having  sum(salary) <1000; 
