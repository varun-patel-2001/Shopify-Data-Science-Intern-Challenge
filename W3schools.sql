SELECT count() FROM [Orders] JOIN OrderDetails ON Orders.OrderId = OrderDetails.OrderId JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID where ShipperName = 'Speedy Express'

SELECT LastName FROM Employees JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID Group By LastName Order By Count(LastName) DESC Limit 1

SELECT Products.ProductName FROM [Customers] Join Orders On Orders.CustomerId = Customers.CustomerId Join OrderDetails ON OrderDetails.OrderId = Orders.OrderId Join Products ON Products.ProductId = OrderDetails.ProductId where Country = 'Germany' group by products.productID order by SUM(Quantity) Desc Limit 1