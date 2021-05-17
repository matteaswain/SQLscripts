--parameters and store procedure 

create or alter procedure FindUserByUsernameAndPassword
	@username varchar(30) = null,
	@password varchar(30) = null

as
begin
	if @username = ''
	begin
		Print '@Username is required!'
		return
	end;
	if @password<>''
	begin 	
		select *
			from Users
				where Username = @username AND Password = @password;
	end
	else 
	begin
		select *
			from Users
				where Username = @username;
	end

end;

exec FindUserByUsernameAndPassword 'mimi';


