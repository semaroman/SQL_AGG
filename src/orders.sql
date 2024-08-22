drop table if exists Orders;
create table if not exists Orders(
    id integer primary key,
    [date] date not null,
    customer_id integer not null references Customers (id),
    product_name nvarchar(40) not null,
    amount double not null check (amount > 0)
);

delete from Orders;
insert into Orders ([date], customer_id, product_name, amount)
values
    ('2024-08-03', 1, 'apple', 3.0),
    ('2024-08-08', 2, 'pear', 1.0),
    ('2024-08-11', 3, 'banana', 2.0),
    ('2024-08-12', 4, 'orange', 5.0),
    ('2024-08-14', 5, 'lemon', 0.5),
    ('2024-08-17', 1, 'potato', 7.0),
    ('2024-08-19', 2, 'tomato', 2.5),
    ('2024-08-19', 3, 'cucumber', 1.5),
    ('2024-08-20', 4, 'onion', 1.0),
    ('2024-08-22', 5, 'pepper', 3.5);
select * from Orders;