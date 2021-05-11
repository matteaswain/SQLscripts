--List of customers

select City, sum(sales) 'City Sales'
from Customers
group by City
having sum(sales) > 600000;