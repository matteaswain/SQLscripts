--Add Product

create or alter procedure AddProduct
	@PartNbr varchar(30) = '',
	@Name varchar(30) = '',
	@Price decimal(9,2) = null,
	@Unit varchar(30) = '',
	@Photopath varchar(255) = null,
	@Vendorname varchar(30) = null
as
begin
	if @Vendorname = null
begin
		print 'Vendor Name is Required'
		return -1;
end
	declare @vendorid int = 0;
	select @vendorid = Id from Vendors where name =@vendorname;

	insert into Products
		(PartNbr,Name,Price,Unit,PhotoPath,VendorId)
			values
		(@PartNbr,@Name,@Price,@Unit,@Photopath,@vendorid)
		return 0;
end
go
exec AddProduct 'WTH','Watch',199.99,'Each',null,'Amazon'
