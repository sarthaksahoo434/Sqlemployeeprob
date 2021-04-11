select * from sys.databases

create database payroll_services

use payroll_service

create table employee_payroll1
(
id int identity(1,1) primary key,
name varchar(20) not null,
salary money not null,
start date not null
);


select * from employee_payroll1

insert into employee_payroll1 values
 ('Billi',100000.0,'2018-01-03'),
 ('Terica',20000.0,'2019-11-13'),
 ('Charlie',30000.0,'2020-05-21');

 insert into employee_payroll1(salary,start,name) values
 (10000.0,'2018-01-03','Billi');

 select * from employee_payroll1 where name='Billi' 

 select getdate()

 select salary from employee_payroll1 where start between '2018-01-01' and getdate()



 alter table employee_payroll1 add gender char (1)

 select * from employee_payroll1

 update employee_payroll1 set gender='F' where name = 'Terica'
update employee_payroll1 set gender='M' where name = 'Charlie'
update employee_payroll1 set gender='F' where name = 'Billi'

select sum(salary) from employee_payroll1

select avg(salary) from employee_payroll1 where gender='F'

select gender,avg(salary) as 'Average salary' from employee_payroll1 group by gender

