use employees;

delimiter $$

create procedure makes_more_70000 (
	in employee_number int, 
	out salary_greater_70k varchar(5)
)

begin
	declare salary_amount int;

	select s.salary
	into salary_amount
	from salaries s 
	inner join employees e on e.emp_no = s.emp_no 
	where e.emp_no = employee_number
	limit 1; 

	if salary_amount > 70000 then 
		set salary_greater_70k = 'true';
	else
		set salary_greater_70k = 'false';
	end if;

end $$

call makes_more_70000(64048, @over70000);
select @over70000;
