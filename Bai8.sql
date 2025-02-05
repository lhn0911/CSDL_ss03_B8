create table Products(
product_id int primary key auto_increment,
name varchar(255) not null,
price decimal(10,2) not null check (price >0),
stock int check (stock >=0),
category varchar(100)
);
INSERT INTO Products (name, price, stock, category)
VALUES
('iPhone 14', 999.99, 20, 'Electronics'),
('Samsung Galaxy S23', 849.99, 15, 'Electronics'),
('Sony Headphones', 199.99, 30, 'Electronics'),
('Wooden Table', 120.50, 10, 'Furniture'),
('Office Chair', 89.99, 25, 'Furniture'),
('Running Shoes', 49.99, 50, 'Sports'),
('Basketball', 29.99, 100, 'Sports'),
('T-Shirt', 19.99, 200, 'Clothing'),
('Laptop Bag', 39.99, 40, 'Accessories'),
('Desk Lamp', 25.00, 35, 'Electronics');
select *from Products;
select *from Products where category = 'Electronics' and price > 200;
select *from Products where stock <20;
select name, price  from Products where category = 'Sports' or category = 'Accessories';
update Products set stock = 100 where name like ('S%');
update Products set category = 'Premium Electronics' where price > 500;
delete from Products where stock =0;
delete from Products where category = 'Clothing' and price < 30;