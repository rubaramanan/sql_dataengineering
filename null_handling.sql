-- NULL value we can't use any operators
-- NULL not equal 'NULL' (it will handle as string)

select count(*)
from users
where email = NULL;

-- for NULL we have to use is and is not
select count(*)
from users
where email is NULL;

select count(*)
from users
where email is not NULL;

select sale_id,
       quantity,
       price,
       unit_price
from sales
where quantity is NULL
or unit_price is NULL
or price is NULL;


select 
    sale_id,
    quantity,
    unit_price,
    coalesce(price, 0.0) as price
from sales
where quantity is NULL
or unit_price is NULL
or price is NULL;

-- coalesce will replace not null value with first occurence
select coalesce(NULL, 0.0);

select coalesce(NULL, NULL, 11.0);

select coalesce(NULL, 30.0, 25.0, NULL);

