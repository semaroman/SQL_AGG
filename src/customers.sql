drop table if exists Customers;
create table if not exists Customers(
    id integer primary key,
    name nvarchar(20) not null unique,
    surname nvarchar(20) not null unique,
    age integer check (age > 0),
    phone char(16) not null unique
);

delete from Customers;
insert into Customers(name, surname, age, phone)
values
    ('Nikolay', 'Vlasov', 39, '+7(988)736-85-43'),
    ('Yulia', 'Rumyantseva', 46, '+7(910)626-32-64'),
    ('Mariya', 'Pokrovskaya', 18, '+7(931)681-62-48'),
    ('Bogdan', 'Nikonov', 20, '+7(999)632-15-98'),
    ('Alexey', 'Gerasimov', 34, '+7(903)531-09-78');
select * from Customers;