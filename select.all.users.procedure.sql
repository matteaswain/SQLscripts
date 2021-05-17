-- Select all users procedures

create or alter procedure SelectAllUsersSafe
as
begin
	SELECT Id, Username, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin 
		from USers u; 
end

go

exec SelectAllUsersSafe
