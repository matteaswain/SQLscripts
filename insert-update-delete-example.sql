

	insert into Customers(Name, City, State, Sales, Active)
	values 
	('ACME MFG CO 1', 'Cincinnati', 'OH', 1000, 1),
	('ACME MFG 2CO', 'Cincinnati', 'OH', 1000, 1)

	update Customers set
	name = 'Acme Mfg Co 0',
	Sales = 0
	where Name = 'ACME MFG CO';

	
	select * from Customers
		where Name = 'Acme Mfg Co 0'

	
	Delete from Customers
	where Id = 37

	update Customers set 
	name = 'ACME MFG CO 2'
	where Name = 'ACME MFG 2CO';
