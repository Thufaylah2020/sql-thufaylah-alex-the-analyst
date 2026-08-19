-- GROUP BY statement
select gender 
from employee_demographics
group by gender
;

select gender, avg(age)
from employee_demographics
group by gender
;

select occupation, salary
from employee_salary
group by occupation, salary
;

select gender, avg(age), MIN(age), MAX(age), count(age)
from employee_demographics
group by gender
;

-- ORDER BY statement (mengurutkan nilai dari kolom yang ditentukan) descending untuk z - a, ascending a - z
select *
from employee_demographics
order by age, gender 
;
select *
from employee_demographics
order by 5, 4 -- using four coloumn
;
