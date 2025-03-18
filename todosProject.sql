create table users(
      user_id serial primary key,
      username text not null,
      password text not null,
      createdAt timestamp default CURRENT_TIMESTAMP 
);

create table todos(
      todos_id serial primary key,
      title text not null,
      description text not null,
      user_id int,
      constraint fk_userid FOREIGN key (user_id) references users(user_id) 
);


insert into users (username,password)values('hayaan','admin');
insert into todos(title,description,user_id)values('mobile app','postgresql,prisma,react,node',1);


select *from users inner join todos on users.user_id = todos.user_id
