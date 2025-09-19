use practice;
drop table if exists employee;
create table employee(
 emp_id int,
 emp_name varchar(20),
 salary decimal(10,2),
 dept varchar(15),
 departid int
);

insert into employee
values 
 (101,'Ajel',70000,'Finance',10),
 (102,'Viji',45000,'Operations',20),
 (103,'Ebi',55000,'hr',10),
 (104,'Jaideesh',65000,'Marketing',30),
 (105,'Ramya',50000,'IT',30);

select * from employee;

delimiter $$
create procedure updatedept(
    in dept_id int,
    in newdept varchar(10),
    out message varchar(400)
)
begin
    declare currentdept varchar(10);

    -- Get one current dept name for this dept_id
    select dept into currentdept 
    from employee 
    where departid = dept_id
    limit 1;

    if newdept != currentdept then
        update employee 
        set dept = newdept 
        where departid = dept_id;
        set message = 'new dept is updated';
    else 
        set message = 'new dept is not updated';
    end if;
end $$
delimiter ;

set @msg ='';
call updatedept(10,'hr',@msg);
select @msg;

select * from employee;
