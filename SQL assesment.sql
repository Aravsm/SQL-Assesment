create database worker_lt;

use worker_lt;


create table worker(
			WORKER_ID INT auto_increment primary KEY,
            FIRST_NAME VARCHAR(100),
            LAST_NAME VARCHAR(100),
            SALARY INT,
            JOINING_DATE   datetime  NOT null ,
            DEPARTMENT VARCHAR(50)
);

insert INTO worker (FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
valueS             ('Monika','Arora',100000,'2014-02-20 09:00','HR'),
				   ('Niharika','Verma',80000,'2014-06-11 09:00','Admin'),
                   ('Vishal','Singhal',300000,'2014-02-20 09:00','HR'),
                   ('Amitabh','Singh',500000,'2014-02-20 09:00','Admin'),
                   ('Vivek','Bhati',500000,'2014-06-11 09:00','Admin'),
                   ('Vipul','Diwan',200000,'2014-06-11 09:00','Account'),
                   ('Satish','Kumar',75000,'2014-01-20 09:00','Account'),
                   ('Geetika','Chauhan',90000,'2014-04-11 09:00','Admin');


select* FROM WORKER;

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
select * from worker order by first_name,department desc;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
select * from worker where first_name in('Vipul','Satish');
 
-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select substr(first_name,1,6) from worker where first_name like '%h';
 
-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
select * from worker where salary  between 1 and 100000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select distinct(department) from worker;
 
-- 6. Write an SQL query to show the top 6 records of a table.
select * from worker order by worker_id limit 6;
 
-- 7. Write an SQL query to fetch the departments that have less than five people in them. 
select department,count(department) from worker group by department having count(department)<5;

-- 8. Write an SQL query to show all departments along with the number of people in there. 
select department,count(department) as number_pepole from worker group by department;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department.
select first_name,department,salary from worker 
 having (department,salary) in (select department,max(salary) from worker group by department)  ;




-----------
create database BVS_SCHOOL;
use BVS_SCHOOL;

create table students(
                       std_id int primary key,
                       studentname varchar(100),
                       sex varchar(20),
                       percentage int,
                       class int,
                       sec char(1),
                       stream varchar(50),
                       bob date
					);

insert into students(std_id,studentname,sex,percentage,class,sec,stream,bob)
values(1001,'Surekha Joshi','Female',82,12,'A','Science','1998/08/03'),
	(1002,'Maahi Agarwal','Female',56,11,'C','Commerce','2008/11/23'),
    (1003,'Sanam Verma','Male',59,11,'C','Commerce','2006/06/29'),
    (1004,'Rohit kumar','Male',63,11,'C','Commerce','1997/05/11'),
    (1005,'Dipesh Pulkit','Male',78,11,'B','Science','2003/09/14'),
    (1006,'Jahanvi Puri','Female',60,11,'B','Commerce','2008/07/11'),
    (1007,'Sanam Kumar','Male',23,12,'F','Commerce','1998/08/03'),
    (1008,'Sahil Saras','Male',56,11,'C','Commerce','2008/07/11'),
    (1009,'Akshra Agarwal','Female',72,12,'B','Commerce','1996/01/10'),
    (1010,'Stuti Mishra','Female',39,11,'F','Science','2008/11/23'),
    (1011,'Harsh Agarwal','Male',42,11,'C','Science','1998/08/03'),
    (1012,'Nikunj Agarwal','Male',49,12,'C','Commerce','1998/06/28'),
    (1013,'Akriti Saxena','Female',89,12,'A','Science','2008/11/23'),
    (1014,'Tani Rastogi','Female',82,12,'A','Science','2008/11/23');



-- 1 To display all the records form STUDENT table
select * from students;

-- 2. To display any name and date of birth from the table STUDENT.
select studentname,bob from students; 

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 
select * from students where percentage >=80;

-- 4. To display student name, stream and percentage where percentage of student is more than 80
select studentname,stream,percentage from students where percentage>80;

-- 5. To display all records of science students whose percentage is more than 75 form student table.
select * from students where stream='Science'and percentage>75;