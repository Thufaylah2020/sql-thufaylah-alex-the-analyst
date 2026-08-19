select * from employee_demographics;
select * from parks_and_recreation.employee_demographics;
select employee_id, first_name, age, (age + 10)*5 
from parks_and_recreation.employee_demographics;

select * from parks_and_recreation.employee_salary;
select occupation from parks_and_recreation.employee_salary;
select distinct gender from parks_and_recreation.employee_demographics;


