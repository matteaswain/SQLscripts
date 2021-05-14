--create our own database
/*
use master;
create database Bootcamp;

use Bootcamp;
create table Students 
	(Id int primary key identity(1,1),
		Firstname varchar(30) not null, 
			Lastname varchar(30) not null,
				Address varchar(50) not null, 
					City varchar(50) not null,
						State char(2) not null,
							Zip varchar(10) not null,
								AssessmentScore int not null				
	);

use Bootcamp;
create table Assessments
		(Id int primary key identity(1,1),
			StudentId int not null foreign key references Students(ID),
					Topic varchar(30) not null, 
						Score int not null, 
									
		);


create table Customers
	(Id int primary key identity(1,1),
		Code varchar(10) not null Unique,
			Name varchar(30) not null,
				Sales decimal(9,2) not null default(0) Check (Sales >=0),
					Active bit not null Default 1,
						Created datetime not null default getdate()
		);


insert into Customers
	(Code, Name)
	values ('TQL', 'Total Quality Logistics');


insert into Customers 
	(Code, Name)
		values ('USB', 'United States Bakery');



insert into Customers
	(Code, Name)
		values ('MAX', 'Max Technical Training');
*/

