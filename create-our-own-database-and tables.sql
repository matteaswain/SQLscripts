--create our own database
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