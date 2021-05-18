--Add Request Line

create or alter procedure AddRequestLine
	@RequestId int = 0,
	@Productname varchar(30) = '',
	@Quantity int = 0
as 
begin
	declare @ProductId int = 0;
	select @ProductId = Id from Products where name = @Productname;
	
	insert into RequestLines
		(RequestId,ProductId,Quantity)
		values
		(@RequestId,@ProductId,@Quantity)
		return -2;
end

	exec AddRequestLine
	3,'Paper',2




