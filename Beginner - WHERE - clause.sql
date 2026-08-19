-- WHERE clause
select * from parks_and_recreation.employee_salary;
select * from parks_and_recreation.employee_salary
where first_name = 'Leslie'
;
-- using (=) for including 50000 in salary 
select * from parks_and_recreation.employee_salary
where salary >= 50000 
;
select * from parks_and_recreation.employee_salary
where salary < 50000 
;
-- the resuld will be (berlwana) jika menggunakan (!=)
select * from parks_and_recreation.employee_demographics
where gender != 'Female'
;
-- OR AND OR NOT statement
select * from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male'
;
select * from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55
;
-- LIKE statement 
-- % and _
select * from employee_demographics
where first_name like 'a___%'
;
select * from employee_demographics
where birth_date like '1989%'
;
