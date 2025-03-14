create table sales(
    sale_id integer primary key,
    product_id integer,
    quantity integer,
    unit_price decimal(10,2),
    price decimal(10,2)
);

insert into sales(sale_id, product_id, quantity, unit_price, price)
values
(1001, 2001, 10, 2.50, 25.00),
(1002, 2002, 5, 2, 10.00),
(1003, 2003, 8, 3, 24.00),
(1004, 2004, 12, 2.50, 30.00),
(1005, 2001, 10, 2.50, 25.00);


-- total sales amount

select sum(price)
from sales;

-- total sales amount with column name as total sales
select sum(price) as total_sales
from sales;

-- count of sales for 2001 product_id
select count(*)
from sales
where product_id=2001;

-- count of sales for 2001, 2002, 20023 product_id
select count(*)
from sales
where product_id in (2001, 2002, 2003);

-- count of sales for exclude 2001, 2002, 20023 product_id
select count(*)
from sales
where product_id not in (2001, 2002, 2003);

-- minimum sales
select min(price)
from sales;

-- maximum sales
select max(price)
from sales;

-- average sales
select avg(price)
from sales;

-- Total sales for each unique product
-- we have to use groupby if we get aggregate and non aggregate column
select product_id,
sum(price) as total_revenue
from sales
group by product_id;

-- Total sales for each product which more than 20$
-- having we can use aggregation condition
-- where non-aggregation condition
select product_id,
sum(price) as total_revenue
from sales
group by product_id
having sum(price) > 20;