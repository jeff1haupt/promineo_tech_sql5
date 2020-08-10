use employees;

drop procedure if exists hire_date_low_employee_number;

delimiter $$

create procedure hire_date_low_employee_number (
	in employee_number int,
	out low_new_employee_number varchar(20)
)

begin

declare emp_hire int;

select year(e.hire_date)
into emp_hire
from employees e
where e.emp_no = employee_number;

if emp_hire = 2002 and employee_number < 100000 then 
	set low_new_employee_number = 'true';
else 
	set low_new_employee_number = 'false';
end if;

end $$

call hire_date_low_employee_number(46943, @new_employee_with_low_eid );
select @new_employee_with_low_eid;
