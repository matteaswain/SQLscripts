--create PRSDb and insert the data

use master;

drop database if exists PrsDb

create database PrsDb;

Go

use PrsDb;

create table Users
	(Id int primary key identity (1,1),
		Username varchar(30) not null Unique,
			Password varchar(30) not null,
				Firstname varchar(30) not null,
					Lastname varchar(30) not null,
						Phone varchar(12) null,
							Email varchar(255) null,
								IsReviewer bit not null default 0,
									IsAdmin bit not null default 0
	);


create table Vendors
	(Id int primary key identity(1,1),
		Code varchar(30) not null unique,
			Name varchar(30) not null,
				Address varchar(30) not null,
					City varchar(30) not null, 
						State varchar(30) not null, 
							Zip varchar(5) not null, 
								Phone varchar(12) null, 
									Email varchar(255) null
	);


create table Products
	(Id int primary key identity(1,1),
		PartNbr varchar(30) not null unique,
			Name varchar(30) not null,
				Price decimal(9,2) default 0,
					Unit varchar(30) not null default 'Each',
						PhotoPath varchar(255) null,
							VendorId int not null foreign key references Vendors(Id) 
	);

create table Requests
	(Id int primary key identity(1,1),
		Description varchar(80) not null,
			Justification varchar(80) not null, 
				RejectionReason varchar(80),
					DeliveryMode varchar(20) not null,
						Status varchar(10) not null Default 'NEW',
							Total decimal(11,2) not null default 0,
								UserId int not null foreign key references Users(Id)
	);