use employees;

delimiter $$

create procedure yearly_raise (
	in employee_number int, 
	out bonus_percentage varchar(3)
)

begin
	declare start_year int;
	declare years_employed int;

	select year(e.hire_date) 
	into start_year
	from employees e 
	where e.emp_no = employee_number
	limit 1; 

	set years_employed = year(now()) - start_year;

    CASE 
		WHEN  years_employed <= 5 THEN
		   SET bonus_percentage = '6%';
		WHEN  years_employed > 5 and years_employed <= 10 THEN
		   SET bonus_percentage = '5%';
		WHEN  years_employed > 10 and years_employed <= 20 THEN
		   SET bonus_percentage = '4%';
		ELSE
		   SET bonus_percentage = '3%';
	END CASE;



end $$

call yearly_raise(232496, @percent_raise);
select @percent_raise;
