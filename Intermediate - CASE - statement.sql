-- case statements

select first_name, 
last_name,
age,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 50 then "On Death's Door"
end as age_bracket
From employee_demographics;


-- Pay incrase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10 % bonus

select first_name, last_name, salary,
case
	when salary <= 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as new_salary
from employee_salary;


select first_name, last_name, salary,
case 
	when salary > 50000 then salary * 1.07
    when salary < 50000 then salary * 1.05
end as new_salary,
case
	when dept_id = 6 then salary * 1.0
end as Bonus
from employee_salary
;
select * 
from parks_departments
;
