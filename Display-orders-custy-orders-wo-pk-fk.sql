-- Display orders,custy,order w/o PK or FK 

select c.Name, c.City, c.State, o.Date, o.Description,
o2.Price, o2.Product, o2.Quantity, 
o2.Quantity*o2.Price 'Line Total' 
from Customers c
join Orders o
on c.Id = o.CustomerId
join OrderLines o2
on o2.OrdersId = o.Id
order by Product, Price