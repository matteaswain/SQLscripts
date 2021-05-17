-- Drop a user
/*
delete from Users where Firstname = 'John'
*/

create or alter procedure DeleteUser
	@id int = 0

as 
begin 
	if @id = '';
	begin
		print 'User Not Found'
		return -1;
	end;
	Delete from Users
		Where Id = @id;
return 0;

end

exec DeleteUser 5