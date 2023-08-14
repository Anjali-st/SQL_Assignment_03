use joinExDb
select * from Emps order by Id
select * from Depts order by DId

--outer: left,right,full
--left outer join

select e.Id,e.Fname,e.Lname,d.DId,e.Salary,e.Designation,d.DName'Department'
from Emps e left outer join Depts d on e.DId=d.DId

--right outer join

select e.Id,e.Fname,e.Lname,d.DId,e.Salary,e.Designation,d.DName'Department'
from Emps e right outer join Depts d on e.DId=d.DId

--full outer join

select e.Id,e.Fname,e.Lname,d.DId,e.Salary,e.Designation,d.DName'Department'
from Emps e full outer join Depts d on e.DId=d.DId

---cross join
create table Sizes
(SID int primary key,
Size nvarchar(50) not null unique)

create table Colors
(CID int primary key,
Color nvarchar(50) not null unique)

insert into Sizes values(1,'Short'),(2,'Medium'),(3,'Large')
insert into Colors values(1,'Light Blue'),(2,'Green'),(3,'White'),(4,'Pink')


select Size,Color from Sizes cross join Colors

insert into Sizes values(4,'Extra Large')


select Size,Color from Sizes cross join Colors