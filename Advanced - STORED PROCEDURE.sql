-- Stored Procedures

create procedure large_salaries()
select *
from employee_salary
where salary >= 50000;

call large_salaries();

call parks_and_recreation.large_salaries();


-- drop large_salaries2;

delimiter $$
create procedure large_salaries4(p_employee_id INT)
begin
	select salary
	from employee_salary
    where employee_id= p_employee_id
    ;
end $$
delimiter ;

call large_salaries4(1);