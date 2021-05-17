--create PRSDb and insert the data
/*
use master;

drop database if exists PrsDb

create database PrsDb;



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
					DeliveryMode varchar(20) not null default 'PickUp',
						Status varchar(10) not null Default 'NEW',
							Total decimal(11,2) not null default 0,
								UserId int not null foreign key references Users(Id)
	);

	create table RequestLines
		(Id int primary key identity(1,1),
			RequestId int not null Foreign key references Requests(Id),
				ProductId int not null Foreign key references Products(Id),
					Quantity int not null default 1

		);


-- insert 3 users, 3 venders, 5 products < $50

insert into Users
	(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
		values ('Admin', 'adminlife22' ,'Admin', 'Admin', 8888888888, 'admin@fakeemail.com',1,1);

insert into Users
	(Username, Password, Firstname, Lastname,IsReviewer)
		values ('Mimi', 'Mimirocks', 'Mia', 'Ausa', 1);

insert into Users
	(Username, Password, Firstname, Lastname)
		values ('Chuck', 'Chuckischessy','Chuck','Taylor');



insert into Vendors
	(Code, Name,Address,City, State, Zip)
		values ('TRG', 'Target','222 Target Rd','Denver', 'CO','12345');

insert into Vendors
	(Code, Name,Address,City, State, Zip)
		values ('STPLS', 'Staples','444 Staple Ave','Spokan Valley', 'WA', '67890');

insert into Vendors
	(Code, Name,Address,City, State, Zip)
		values ('AMZ', 'Amazon','5354 Amazon Forest','Stockton', 'CA', '13579');


insert into Products
	(PartNbr, Name, Price, VendorId)
		values('PPR','Paper', 1.99,1); 

insert into Products
	(PartNbr, Name, Price, VendorId)
		values('BPK','Backpack', 9.99,2);


insert into Products
	(PartNbr,Name,Price,VendorId)
		values ('LAP','Laptop',199.99,(select v.Name from Vendors v
			where v.Name = 'Amazon');

insert into Products
	(PartNbr,Name,Price,VendorId)
		values ('WTR','Water',3.98,1);


insert into Products
	(PartNbr,Name,Price,VendorId)
		values ('WBC','Webcam',79.99,2);

*/

select * from Users

select * from Products

select * from Vendors

select * from Requests

select * from RequestLines