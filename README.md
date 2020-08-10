# Promineo Tech - Back-end Program - mySQL Week 5

## Table of Contents
* [General info](#general-info)
* [Technologies](#technologies)

## General Info
The purpose of this homework assignment is continued work on developing our mySQL query skills.  This assignment required us to complete 5 different STORED PROCEDURES using the employees.db.  Each STORED PROCEDURE is explained below

CURRENT_SALARY - this is a stored procedure where a user can CALL the procedure and enter an employee id.  If the employee is currently employed, it will return the current salary of the employee.  If the employee is no longer employed, then an indicator of -1 is returned.   

POSTS table tracks the post that are made on the blogging system. POSTS has one primary key and supports two foreign keys so that USERS can be assigned to posts and COMMENTS can be assigned to posts. 

COMMENTS table has one primary key.  It has a foreign key relationship with USERS so that each user can see the comments he or she has made.  

No data was inserted as part of this project.

## Technologies
* mySQL 8
* dBeaver 7
