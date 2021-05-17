-- Update Vendor

create or alter procedure UpdateVendor
	@Id int = 0,
	@Code varchar(30) = '',
	@Name varchar(30) = '',
	@Address varchar(30) = '',
	@City varchar(30) ='',
	@State varchar(30) = '',
	@Zip varchar(5) = '',
	@Phone varchar(12) = null,
	@email varchar(255) = null
as 
begin
	if not exists (select 1 from Vendors where id = @id)
	begin
	 Print 'Vendor Not Fond';
	 return -1;
	 end;
Update Vendors set
	Code = @Code, 
	Name = @Name, 
	Address = @Address,
	City = @city,
	State = @State,
	Zip = @zip, 
	Phone = @Phone,
	Email = @email;
	return 0;
end;

exec UpdateVendor
	

select * from Vendors
