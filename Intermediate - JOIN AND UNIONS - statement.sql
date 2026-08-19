-- JOIN statement

select *
from employee_demographics
;
select *
from employee_salary
;

-- Inner Join
select *
from employee_demographics as ed
inner join employee_salary as es
	on ed.employee_id = es.employee_id
;

select *
from employee_demographics as ed
inner join employee_salary as es
	on ed.employee_id = es.employee_id
;

select ed.employee_id, age, occupation
from employee_demographics as ed
inner join employee_salary as es
	on ed.employee_id = es.employee_id
;
-- OUTER JOIN
select *
from employee_demographics as ed
right join employee_salary as es
	on ed.employee_id = es.employee_id
;

-- Self join 
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_santa,
emp2.first_name as first_name_santa,
emp2.last_name as last_name_santa
from employee_salary emp1 -- right 
join employee_salary emp2 -- left
	on emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables together
select * 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id
;

-- UNION statement
select first_name, last_name, 'Old' as label
from employee_demographics
where age > 50 and gender = 'female'
union
select first_name, last_name, 'old' as Label
from employee_salary
where salary > 70000
order by first_name, last_name
;

