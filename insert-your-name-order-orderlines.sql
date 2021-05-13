-- INSERT customer your name, order and order lines 

Insert into Customers (Name, City, State, Sales, Active)
	values ('Mattea Swain', 'Cincinnati', 'OH', 0, 1)

insert into Orders(Date, Description, CustomerId)
	values (
				'1991-04-21','Matea''s Order' ,
				(
					select ID from Customers 
						where name = 'Mattea Swain'
				)
			);

	insert into OrderLines
	(Product, Description, Quantity, Price, OrdersId)
	values 
	(	
		'Life', 'First Day of Life Second Installment',3, 29.99,
		(	
			select Id from Orders 
				where CustomerId = 
			(	
				select ID from Customers 
					where name = 'Mattea Swain'
			)
		)
	);


