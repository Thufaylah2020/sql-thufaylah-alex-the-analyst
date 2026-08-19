-- STRING function
select length('skyfall');

select first_name, length(first_name)
from employee_demographics
order by 2
;

select upper('lala');
select lower('elsa');

select first_name, lower(first_name)
from employee_salary
order by first_name Desc;

select first_name, upper(first_name)
from employee_demographics
order by first_name asc;

select ('							sky				');

select first_name, 
left(first_name, 2),
right(first_name, 2),
substring(first_name,3,2) -- (kolom, huruf keberapa, berapa banyak)
birth_date, 
substring(birth_date,6,2)
from employee_demographics;

select first_name, replace(first_name, 'a','z')
from employee_demographics;

select locate('x','Alexander');

select first_name, locate('An', first_name)
from employee_demographics;

select first_name, last_name,
concat(first_name,' ',last_name) as full_name -- untuk menyambungkan dua isi kolom yang berbeda
from employee_demographics;


