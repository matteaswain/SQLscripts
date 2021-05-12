select c.Name, CONCAT(c.City, ' ', c.State) 'Location',
o.Date, o.Description, o2.Product, o2.Description, o2.Quantity, o2.Price,
o2.Quantity * o2.Price 'LineTotal'
	from Orders o
	join Customers c 
	on o.CustomerId = c.Id
	join OrderLines o2
	on o.Id = o2.OrdersId