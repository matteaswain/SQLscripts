-- Update procedure 

create or alter procedure UpdateUser
	@id int = 0,
	@username varchar(30) = '',
	@password varchar(30) = '',
	@Firstname varchar(30) = '',
	@Lastname varchar(30) = '',
	@Phone varchar(12) = null,
	@Email varchar(255) = null,
	@IsReviewer bit = false,
	@IsAdmin bit = false

as 
begin 
	if @username = '' or @password = '' or @Firstname = '' or @lastname = ''
	begin
		print 'User Not Found'
		return -1;
	end;
if exists (select 1 from Users u where Username = @username)
begin
	Print 'Username already exist - Select Another!';
	return -2;
end;
	Update Users set
	Username = @username, 
	Password = @password,
	Firstname = @Firstname,
	Lastname = @Lastname,
	Phone = @Phone,
	Email = @Email,
	IsReviewer = @IsReviewer,
	IsAdmin = @IsAdmin
	Where Id = @id;
return 0;
end
go 

exec UpdateUser 6,Salamander,SalPal21,Sal,Joe,null,'salpal21@fakeemail.com',0,0;

select * from Users


