create table Groups(
[Id] int,
[Name]nvarchar(50)
)

create table Students(
  [Id] int,
  [Name]nvarchar(50),
  [Surname]nvarchar(50),
  [Age] int,
)


drop table Groups

alter table Students
add [Address]nvarchar(200)

alter table Students 
drop column [Address]



Exec sp_rename Students,Resad
Exec sp_rename Resad,Students

Exec sp_rename 'Students.Surname',Lastname

Exec sp_rename 'Students.Lastname',Surname

select * from Students

insert into Students([Id],[Name],[Surname],[Age])
values(2,'Ilqar','Shiriyev',26),
      (3,'Reshad','Aghayev',21),
      (4,'Kamran','Muradov',24),
      (5,'Hacixan','Hacixanov',19),
      (6,'Zeyqem','Ashurov',39)
delete from Students where[Id]=2

insert into Students([Id],[Name],[Surname],[Age])
values(7,'Behruz','Eliyev',37)

update Students
set[Age]=25
where[Id]=5

select * from Students
select [Name],[Surname]from Students
select [Age] as 'Student age' from Students
select Count(*) 'Student count'  from Students
select AVG([Age])  from Students
select Sum([Age]) as 'Student age sum'from Students
select Min([Age]) as 'Student min age'from Students
select Max([Age]) as 'Student max age'from Students

select* from Students where [Id]=3
select* from Students where [Id]>3
select COUNT(*) from Students where [Id]>3

select * from Students where [Id]>2 and [Id]<5
select * from Students where [Age] between 25 and 38

select * from Students where [Name] like '%r'
select * from Students where [Name] like 'r%'
select * from Students where [Name] like '%r%'

select * from Students  where [Age]=(select Min(Age) from Students)

Declare @Age int
Set @Age=(select Min(Age) from Students)
select * from Students where [Age]=@Age

select * from Students
order by [Age] desc

select SUBSTRING((select [Name] from Students where [Id]=3),1,3)As qisaldilmisad  

select Len([Name]) as 'lenght' from Students where [Id]=3

select [Name] from Students where [Id]=3

declare @resultName nvarchar(50)
Set @resultName=(select [Name] from Students where [Id]=3)
select SUBSTRING(@resultName,1,6)As 'Resadin adinin qisaldilmisi'

select SUBSTRING([Name],1,3) from Students

create table Employees(
  [Id] int primary key identity(1,1),
  [Name]nvarchar(50) not null,
  [Surname]nvarchar(50) default 'XXX',
  [Age] int check(Age>=18),
  [Email]nvarchar(100) unique,
)
insert into Employees ([Name],[Surname],[Age],[Email])
Values('Kamran','Muradov',24,'kamran@gmail.com')

select* from Employees