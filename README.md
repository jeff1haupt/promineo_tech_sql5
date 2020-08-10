# Promineo Tech - Back-end Program - mySQL Week 4

## Table of Contents
* [General info](#general-info)
* [Technologies](#technologies)

## General Info
The purpose of this homework assignment is continued work on developing our mySQL query skills.  This assignment required us to complete 5 different STORED PROCEDURES using the employees.db.  Each STORED PROCEDURE is explained below

CURRENT_SALARY - this is a stored procedure where a user can CALL the procedure and enter an employee id.  If the employee is currently employed, it will return the current salary of the employee.  If the employee is no longer employed, then an indicator of -1 is returned.   

MAKES_MORE_70k - this STORED PROCEDURE looks at an employee id and tells you if the employee is currently earning more than $70,000 a year or not. 

NEW_HIRE - this STORED PROCEDURE checks to see if the employee was recently hired within 2002

RETIREMENT_ELIGIBLE - this STORED PROCEDURE checks to see if a current employee is 65 or older and then returns that the person is eligible for retirement benefits

YEARLY_RAISE - this STORED PROCEDURE checks to see the number of years of service an employee has in and using CASE returns a possible yearly raise amount based on where the fall in total years of service.


## Technologies
* mySQL 8
* dBeaver 7
