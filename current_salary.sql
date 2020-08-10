use employees;

drop procedure if exists current_salary;

delimiter $$

create procedure current_salary(
	in employee_num int,
	out employee_current_salary int
)

begin 	
	
	declare current_salary int;
	
	select s.salary 
	into current_salary
	from salaries s
	where employee_num = s.emp_no and year(s.to_date) = 9999;

	if current_salary > 0 then 
		set employee_current_salary = current_salary;
	else 
		set employee_current_salary = -1;
	end if;
	
end $$

call current_salary(409774, @currentSalary);
select @currentSalary;
