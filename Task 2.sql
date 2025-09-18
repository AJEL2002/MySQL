use practice;
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
    empid INT PRIMARY KEY,
    name VARCHAR(20),
    age INT
);

INSERT INTO employee (empid, name, age) 
VALUES (1, 'Ajel', 25), (2, 'Jaldeesh', 28), (3, 'Viji', 30), (4, 'Ramya', 27);
SELECT * FROM employee;
alter table employee add salary decimal(10,2);

update employee set salary = 74659 where empid = 4;

alter table employee add department varchar(20);

update employee set department = 'HR' where empid = 4;

select max(salary) as maxSalary from employee;

select min(salary) as minSalary from employee;

select sum(salary) as totalSalary from employee;

select count(empid) as TotalEmployees from employee where department = 'HR';
select avg(salary) from employee;

select * from employee where age > 25 and salary > 60000;

select * from employee where department != 'hr';

select * from employee where salary between 60000 and 90000;

select count(distinct department) from employee;

select * from employee order by name desc;

select * from employee order by salary;

