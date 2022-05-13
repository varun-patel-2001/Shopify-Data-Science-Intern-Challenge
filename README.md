# Fall 2022 Data Science Intern Challenge 

 Please complete the following questions, and provide your thought process/work. You can attach your work in a text file, link, etc. on the application page. Please ensure answers are easily visible for reviewers!



### Question 1: Given some sample data, write a program to answer the following: click here to access the required data set

    On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 
```py
import pandas as pd

data = pd.read_csv('2019 Winter Data Science Intern Challenge Data Set - Sheet1.csv')
print(data['order_amount'].mean())
print(data['order_amount'].sum()/data['total_items'].sum())
```
1. Think about what could be going wrong with our calculation. Think about a better way to evaluate this data. 
        
    The average of the order amounts was being calculated, this does not reflect the average order value because 
    it is not taking into account the number of items bought. A better way would be to include total number of 
    items into the calculation.

2. What metric would you report for this dataset?

    I would return the sum of all the order amounts over the sum of total number of items, this will give the 
    average order value.

3. What is its value?
   
    The value for AOV is roughly $357.92.

### Question 2: For this question you’ll need to use SQL. Follow this link to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.

- How many orders were shipped by Speedy Express in total?
```sql
SELECT count() FROM [Orders] JOIN OrderDetails ON Orders.OrderId = OrderDetails.OrderId JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID where ShipperName = 'Speedy Express'
``` 
       Answer is 149
        
- What is the last name of the employee with the most orders?
```sql
SELECT LastName FROM Employees JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID Group By LastName Order By Count(LastName) DESC Limit 1
```
       Answer is Peacock
- What product was ordered the most by customers in Germany?
```sql
SELECT Products.ProductName FROM [Customers] Join Orders On Orders.CustomerId = Customers.CustomerId Join OrderDetails ON OrderDetails.OrderId = Orders.OrderId Join Products ON Products.ProductId = OrderDetails.ProductId where Country = 'Germany' group by products.productID order by SUM(Quantity) Desc Limit 1
```
       Answer is Boston Crab Meat