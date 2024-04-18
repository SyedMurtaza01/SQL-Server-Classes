create database batch_2212C2;
use batch_2212C2;
select * from students;

--drop karne ki command
alter table students add Groups varchar(255);

--data type change karne k leye
alter table students alter column gender int;

--column drop karne k leye
alter table students drop column gender;

--column ka name change karne ka tareeka
EXECUTE sp_rename 'students.gender', 'address', 'column';

--pura cloumn delete karne k leye
drop table students;

--Database delete karne k leye
drop Database batch_2212C2;

--Truncate command Data k leye jo use hote hai ye data delete karne k leye hai
truncate table students;

--DML COMMAND Constraints Unique, Not Null, Default
create table students(
id int  not null unique identity,
S_Name varchar(255) not null,
faculty varchar(255) unique,
city varchar (255) not null default 'karachi',
cid int not null ,
foreign key (cid) references course (cid)
);

--drop table students;

INSERT INTO students (S_Name, faculty, city, cid) VALUES
('John Doe', 'Computer Science', 'karachi', 1 ),
('Jane Smith', 'Mathematics', 'karachi', 2 ),
('Alice Johnson', 'Physics', 'karachi', 3 ),
('Bob Williams', 'Chemistry', 'karachi', 4 ),
('Ella Brown', 'Biology', 'karachi', 1 ),
('Michael Davis', 'Engineering', 'karachi', 4 ),
('Emma Wilson', 'Literature', 'karachi', 1 ),
('David Martinez', 'History', 'karachi', 1 ),
('Sophia Anderson', 'Art', 'karachi', 1 ),
('James Taylor', 'Music', 'karachi', 2),
('Olivia Lee', 'Dance', 'karachi', 2),
('William Garcia', 'Economics', 'karachi', 2),
('Charlotte Rodriguez', 'Psychology', 'karachi', 3),
('Alexander Martinez', 'Sociology', 'karachi', 4),
('Amelia Hernandez', 'Political Science', 'karachi', 2),
('Daniel Nelson', 'Geography', 'karachi', 2),
('Mia Adams', 'Anthropology', 'karachi', 3),
('Benjamin Thomas', 'Philosophy', 'karachi', 4),
('Harper Baker', 'Environmental Science', 'karachi', 1),
('Ethan Perez', 'Statistics', 'karachi', 2),
('Ava Gonzalez', 'Computer Engineering', 'karachi', 2),
('Logan Campbell', 'Civil Engineering', 'karachi', 2),
('Sofia Collins', 'Electrical Engineering', 'karachi', 3),
('Mason Hill', 'Mechanical Engineering', 'karachi', 4),
('Emily Ward', 'Software Engineering', 'karachi', 2),
('Aiden Flores', 'Industrial Engineering', 'karachi', 1),
('Evelyn Nguyen', 'Aerospace Engineering', 'karachi', 4),
('Jacob Rivera', 'Chemical Engineering', 'karachi', 4),
('Madison Mitchell', 'Biomedical Engineering', 'karachi', 4);
select * from students;

create table course(
cid int not null unique identity,
cname varchar(255) not null,
fname varchar(255) not null unique,
city varchar(50) not null default'Karachi'
);

insert into course(cname,fname,city)values
('php','ebadudin','lahore'),
('javascript','usama','islamabad'),
('html','haris','umarkot'),
('sqlserver','madam hanif','hydrabad');

insert into course(cname,fname,city)values
('C#sharp','madam saira','Sialkot'),
('Graphic Design','muhammad','Gawadar');
select * from course;

--aik column ko delete karne k leye
Delete from students where id=3;

--New table ham bana rhe hai mazeeed constraints ko check karne k leye Unique, Null, default, Check, Identity

create table person(
id int identity (100,1) primary key,
name varchar (50) Not Null,
email varchar(50) unique,
address varchar (100) Not Null,
city varchar(50) default 'karachi',
age int check (age>18)
);

insert into person(name, email, address, age) values ('Naam Tu Suna hoga', 'sma@gmail.com', 'nazimabad', '22');
select * from person;

insert into person values ('Huzaifa', 'huzaifa@gmail.com', 'Liaquatabad', 'Hyderabad', 25);

--sir ne bula hai name k zareye data lao
select * from person where name = 'Syed Murtaza';

INSERT INTO person (name, email, address, city, age) VALUES
('John Doe', 'john@example.com', '123 Main St', 'New York', 30),
('Jane Smith', 'jane@example.com', '456 Elm St', 'Los Angeles', 25),
('Michael Johnson', 'michael@example.com', '789 Oak St', 'Chicago', 35),
('Emily Brown', 'emily@example.com', '101 Pine St', 'San Francisco', 28),
('Chris Wilson', 'chris@example.com', '222 Maple St', 'Seattle', 40),
('Jessica Lee', 'jessica@example.com', '333 Cedar St', 'Boston', 32),
('David Kim', 'david@example.com', '444 Birch St', 'Houston', 27),
('Sarah Taylor', 'sarah@example.com', '555 Spruce St', 'Miami', 29),
('Kevin Martin', 'kevin@example.com', '666 Pineapple St', 'Orlando', 31),
('Amanda Garcia', 'amanda@example.com', '777 Peach St', 'Atlanta', 33),
('James Rodriguez', 'james@example.com', '888 Lemon St', 'Dallas', 26),
('Michelle Martinez', 'michelle@example.com', '999 Strawberry St', 'Phoenix', 34),
('Ryan Nguyen', 'ryan@example.com', '111 Cherry St', 'Denver', 37),
('Melissa Hernandez', 'melissa@example.com', '222 Grape St', 'Austin', 38),
('Jason Brown', 'jason@example.com', '333 Banana St', 'Portland', 39),
('Rachel Adams', 'rachel@example.com', '444 Orange St', 'San Diego', 36),
('Daniel Thomas', 'daniel@example.com', '555 Mango St', 'Philadelphia', 41),
('Kimberly Clark', 'kimberly@example.com', '666 Papaya St', 'Las Vegas', 42),
('Justin Hall', 'justin@example.com', '777 Kiwi St', 'Detroit', 43),
('Nicole White', 'nicole@example.com', '888 Grapefruit St', 'Minneapolis', 44),
('Brandon Martinez', 'brandon@example.com', '999 Avocado St', 'Charlotte', 45),
('Stephanie Adams', 'stephanie@example.com', '111 Olive St', 'Salt Lake City', 46),
('Mark Thompson', 'mark@example.com', '222 Coconut St', 'Kansas City', 47),
('Eric Harris', 'eric@example.com', '333 Pomegranate St', 'Nashville', 48),
('Kelly Davis', 'kelly@example.com', '444 Guava St', 'Raleigh', 49),
('Samantha Jackson', 'samantha@example.com', '555 Fig St', 'Indianapolis', 50),
('Matthew Anderson', 'matthew@example.com', '666 Date St', 'Columbus', 51),
('Laura Wilson', 'laura@example.com', '777 Lime St', 'San Antonio', 52),
('Patrick Walker', 'patrick@example.com', '888 Blueberry St', 'Tampa', 53),
('Ashley Moore', 'ashley@example.com', '999 Raspberry St', 'Memphis', 54);

--Agr a wale alphabat ko record me dekhna ho tu ye query chalate hai 'start' email, address, city, age sb kuch change ho satta hai
SELECT * from person where name like 'a%';

--name k last alphabat k leye ye query chalte hai jisse data ajata hai 'last' email, address, city, age sb kuch change ho satta hai
SELECT * from person where name like '%a';

--Name k between alphabat k leye ye query chalte hai jisse data ajata hai 'Between' email, address, city, age sb kuch change ho satta hai
SELECT * from person where name like '%a%';

--Update Command Name change karne k leye email, address, city, age sb kuch change ho satta hai
update person set name=  'Syed Murtaza' where id = 101;

--ID Delete karne k leye ye query chalte hai
DELETE from person where id = 106;

--OPERATORS
--Airthematic Operator  +, -, /, *, %
--Logical Operator  AND, OR, NOT
--Relational Operator =, >, <, >=, <=, !=

select * from person where id <= 105;

--Column ko add karne  k leye ye query chalate hai
alter table person add Postal_Code int;

--Data ko dalne k leye ye Query chalate hai
Update person SET Postal_Code = 74600 where id = 100;

-- IN => multiple values  ko print krne ke lye --
	select * from Products where Price in(399.99, 799.99);

	-- between => range ke lye use hota hai --
	select * from Products where Price between 200 AND 800;

	-- order by => tarteeb (line wise) se print hota hai --
	select * from Products where Price between 200 AND 800 order by Price;

	--with relatinal operator " < , > , = , >= , <= , !=" AND logical operator "AND , OR , NOT "  --
	select * from Products where ProductID >= 5 AND ProductID <= 10 ;

	--with relatinal operator " < , > , = , >= , <= , !=" AND logical operator "AND , OR , NOT "  --
	select * from Products where (ProductName = 'Bed' OR ProductName = 'Mouse') AND Category = 'Furniture' ;


	--JOINS START

	select * from students inner join course on course.cid = students.cid;

	select * from students right join course on course.cid = students.cid;

	select * from students left join course on course.cid = students.cid;

	--FULL JOIN

	Select * from students full join course on students.cid = course.cid;

create table wr(
id int identity primary key,
name varchar(50),
gender varchar(30),
Assigned int,
dept varchar(40)
)


select * from workers
insert into wr(name, gender, assigned, dept) values ('ali', 'Male', 1, 'President')
INSERT INTO wr (name, gender, Assigned, dept)
VALUES 

    ('Beth', 'Female', 2, 'HR'),
    ('Charlie', 'Male', 2, 'Finance'),
    ('Diana', 'Female', 2, 'Marketing'),
    ('Edward', 'Male', 3, 'IT'),
    ('Fiona', 'Female', 3, 'Sales'),
    ('George', 'Male', 4, 'Operations'),
    ('Helen', 'Female', 8, 'Legal'),
    ('Ivan', 'Male', 4, 'Engineering'),
    ('Julia', 'Female', 10, 'Research'),
    ('Kevin', 'Male', 4, 'Customer Service'),
    ('Linda', 'Female', 12, 'Production'),
    ('Mike', 'Male', 5, 'Quality Assurance'),
    ('Nancy', 'Female', 14, 'Logistics'),
    ('Oscar', 'Male', 5, 'Purchasing'),
    ('Pamela', 'Female', 5, 'Supply Chain'),
    ('Quincy', 'Male', 5, 'Facilities'),
    ('Rachel', 'Female', 18, 'Public Relations'),
    ('Sam', 'Male', 19, 'Training'),
    ('Tina', 'Female', 6, 'Customer Relations');

	select * from wr as T1 inner join workers as T2 on T1.id = T2.Assigned;

	select T1.name as Leads, T1.gender, T2.name as Reporters, T2.dept from wr as T1 inner join wr as T2 on T1.id = T2.Assigned;
	
	select * from wr as T1 Full join wr as T2 on T1.id = T2.Assigned;

	--Group By Clause

	select count (city), city from person group by city;
    select sum(age) as totalage, city from person group by city;
	select max(age) as totalage, city from person group by city;
	select min(age) as totalage, city from person group by city;

	--Emplye k table ki sb se highest salary
	select * from emp where salary = (select max(salary) from emp);
	select * from emp;

	-- IN ka  operator multiple values k leye chalta hai

	select name, salary from emp where salary in (select salary from emp where salary >= 75000);

	--Male ki salary chahiye
	select name, salary from emp where gender = 'male';

	--Sub Query k zareye
	select name, salary, gender from emp where gender in (select gender from emp where gender = 'male');

	--creating login id for user
	create login Ahmed with password = 'Ahmed';

	--creating user for login
	create user Ahmed for login Ahmed;
	GO
	select * from emp;
	
	--Grant Query Accses dene k leye 
	grant select on emp to Murtaza
	grant update on emp to Murtaza
	 
	 --revoke Query Access wapsi lene k leye 
	revoke update on emp from Murtaza;

	--Scalar Function
	create function studentname()
	returns varchar (250)
	begin
	return 'Syed Murtaza';
	end
	select dbo.studentname() as stdname;

	--parameterize function

	create function addition(@num1 int , @num2 int)
	returns int
	begin
	return @num1 + @num2;
	end

	select dbo.addition(5,5) as addition;

	create proc murtaza

	as 
	begin
	select * from person

	end
	Go

	drop proc murtaza

	--Search Procedure--

	------------Output Parameter-------------
	alter proc sp_emp
	@address varchar(100)
	as
	begin
	select * from person where address=@address
	end
	go

	exec sp_emp '123 Main St'

	create proc sp_emp1
	@email varchar (50)
	as
	begin
	select * from person where email like @email
	END
	GO

	exec sp_emp1 'j%'

	----System Define Stored Procedure----
	--exec sp_help--
	     --sp_rename--
		 --sp_depends--
		 --sp_helptext--
		 --sp_helpdb--

    create proc sp_emp2
	(
	@name varchar(50),
    @gender varchar(30),
    @Assigned int,
    @dept varchar(40)
	)
	as
	begin
	insert into wr values (@name, @gender, @Assigned, @dept)
	end
	go

	select * from wr

	exec sp_emp2 'sheharyar', 'Male', 20 , 'Training' 

	--StoreProcedure Update--
	create proc sp_emp2update
	@id int,
	@name varchar(50)
	as
	begin
	update wr SET name = @name where id= @id
	end
	go

	exec sp_emp2update '1', 'mubeen'

	create table CreativeSolution_empp(
	id int identity,
	name varchar(50) not null,
	email varchar(50)  null,
	city varchar(50)  null,
	age varchar(50)  null,
	gender varchar(50)  null,
	salary int 
	)

	INSERT INTO CreativeSolution_empp (name, email, city, age, gender, salary) VALUES
('John Doe', 'john@example.com', 'New York', '30', 'Male', 50000),
('Jane Smith', 'jane@example.com', 'Los Angeles', '25', 'Female', 60000),
('Mike Johnson', 'mike@example.com', 'Chicago', '35', 'Male', 70000),
('Emily Brown', 'emily@example.com', 'Houston', '28', 'Female', 55000),
('David Lee', 'david@example.com', 'San Francisco', '32', 'Male', 65000),
('Sarah Wilson', 'sarah@example.com', 'Seattle', '29', 'Female', 62000),
('Michael Clark', 'michael@example.com', 'Boston', '31', 'Male', 68000),
('Emma Martinez', 'emma@example.com', 'Miami', '27', 'Female', 58000),
('Chris Taylor', 'chris@example.com', 'Atlanta', '33', 'Male', 75000),
('Ava White', 'ava@example.com', 'Dallas', '26', 'Female', 57000);
 
 select * from CreativeSolution_emp;

 create view CreativeSolution_vieww
 as

 Select name,city from CreativeSolution_empp;

 insert into CreativeSolution_vieww values('Murtaza', 'Karachi')

 select * from CreativeSolution_empp;

 select * from CreativeSolution_vieww

 update CreativeSolution_vieww set city= 'Lahore' where name='John Doe'
