create table Teachers(
 [Id]int primary key identity(1,1), 
 [Name]nvarchar(100) not null,
 [Surname]nvarchar(100) default 'XXX',
 [Email]nvarchar(100) unique, 
 [Age]int check(Age>=18) 
)
create table Students(
 [Id]int primary key identity(1,1), 
 [FullName]nvarchar(100) not null,
 [Address]nvarchar(100),
 [Age]int check(Age>=18)
)

insert into Teachers ([Name],[Surname],[Email],[Age])
Values('Kamran','Muradov','kamran@gmail.com',24)
insert into Teachers ([Name],[Surname],[Email],[Age])
Values('Cavid','Bashirov','cavid@gmail.com',30)
insert into Teachers ([Name],[Surname],[Email],[Age])
Values('Fexriyye','Tagizade','fexriyye@gmail.com',19)

insert into Teachers ([Name],[Surname],[Email],[Age])
Values('ulvi','mecidov','ulvi@gmail.com',25)



insert into Students([FullName],[Address],[Age])
Values('Reshad','Neftciler',21)
insert into Students([FullName],[Address],[Age])
Values('Behruz','Kurdexani',37)
insert into Students([FullName],[Address],[Age])
Values('Esgerxan','Yasamal',26)

select * from Teachers
select * from Students

select Count(*) as 'Student count' from Students
 

select * from Teachers where [Age]>20



select * from Teachers where[Email] like '%c%'