-- getting length of string
select length(first_name)
from employee;

-- make all characters upper case
select upper(first_name)
from employee;

-- make all characters lower case
select lower(first_name)
from employee;

-- join two string columns
select concat(first_name, ' ', last_name)
from employee;

-- substring
-- from the string length 1 to 5
select substring(first_name, 1,5)
from employee;

--trim (remove unwanted space in pre and post pad)

select trim('     Hello Ruba   ');
select rtrim('  Hello Ruba    ');

select ltrim('    Hello Ruba  ');

-- padding (making the string length for specific length)

select lpad(first_name, 20, '*')
from employee;

select rpad(first_name, 20, '*')
from employee;

-- replace
select replace(first_name, 'a', '_A')
from employee;

-- position: finding specific character's positin in string
select position('a' in 'Rubavathy');

-- get left side specific number of characters
select left('Ruba Thayalan', 5);

-- get right side specific number of characters
select right('Ruba Thayalan', 5);

--reverse
select reverse('Ramanan');

select to_char(12345.6789, 'L99,999.00');