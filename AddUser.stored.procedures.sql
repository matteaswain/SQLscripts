create or alter procedure AddUser
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
		print 'Username required'
		return -1;
	end;
if exists (select 1 from Users u where Username = @username)
begin
	Print 'Username already exist - Select Another!';
	return -2;
end;
insert into Users
	(Username, Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)
	values
	(@username,@password,@Firstname,@Lastname,@Phone,@Email,@IsReviewer,@IsAdmin);
return 0;
end
go 

exec AddUser 'Salamander','SalPal21','Sally','Joe';



