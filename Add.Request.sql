-- Add Request 

create or alter procedure AddRequest
	@Description varchar(80) = '',
	@Justicifaction varchar(80) = '',
	@DeliveryMode varchar(20) = '',
	@Status varchar(10) = '',
	@Total decimal(11,2) = '',
	@Username varchar(30) = ''
as
begin
	declare @Userid int = 0;
	select @Userid = Id from Users where Username = @Username;
	
insert into Requests
	(Description,Justification,DeliveryMode,Status,Total,UserId)
		values
			(@Description,@Justicifaction,@DeliveryMode,@Status,@Total,@Userid)
			return -2;
end
go

exec AddRequest 'Paper','Got a new office','Pick up','New',1.99,'Admin';

go 

exec AddRequest 'Staples','Im out of staples!','Pick up','New',2.99,'Admin';



