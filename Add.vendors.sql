-- Add Vendor

create or alter procedure AddVendor
	@code varchar(30) = '',
	@Name varchar(30) = '',
	@Address varchar(30) = '',
	@City varchar(30) = '',
	@State varchar(30) = '',
	@Zip varchar(5) = '',
	@Phone varchar (12) = null, 
	@Email varchar(255) = null

as
begin 
	if @code = '' or @name = '' 
			begin
				print 'Vendor not found'
				return -1;
			end;
if exists (select 1 from Vendors where Code = @code)
begin
	print 'Vendor Already Exists';
	return -2
	end;
insert into Vendors
	(Code, Name, Address, City, State,Zip,Phone,Email)
	 values
	 (@code,@Name,@Address,@City,@State,@zip,@Phone,@Email);
	 return 0;
end;

exec AddVendor 'TQL',
'Total Quality Logistics',
'888 Ivy Point',
'Cincinatti',
'OH',
'47891',
null,
null;
 go

 select * from Vendors
