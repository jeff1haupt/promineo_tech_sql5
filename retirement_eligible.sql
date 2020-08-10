use employees;

delimiter $$

create procedure SSR_eligible3 (
	in employee_number int, 
	out retirement varchar(30)
)

begin
	declare birth_year int;
	declare age int;

	select year(e.birth_date) 
	into birth_year
	from employees e 
	where e.emp_no = employee_number
	limit 1; 

	set age = year(now()) - birth_year;

	if age >= 65 then 
		set retirement = "Eligible for retirement";
	else 
		set retirement = "Not eligible for retirement";
	end if;



end $$

call SSR_eligible3(52956, @employeeAge);
select @employeeAge;
