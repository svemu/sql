
-- List all tables in a database
 SELECT table_name FROM information_schema.tables WHERE table_type = 'base table'

 -- Adding a line here to check if git commit works from local repo
 
-- Examples of select, count, statements , using Adv works 

 SELECT COUNT(*) from SalesLT.Customer

 SELECT  * FROM SalesLT.Customer

 SELECT SalesLT.Customer.CompanyName, 
        SalesLT.Customer.EmailAddress,
        SalesLT.Customer.Phone FROM SalesLT.Customer 
        WHERE SalesLT.Customer.CompanyName = 'A Bike Store'

-- Examples of Join 

-- Inner Join , using Adventure works DB 
-- Dont have to explicity call inner join

SELECT  sod.SalesOrderID, sod.OrderQty, sod.UnitPrice,
        soh.Status, soh.TotalDue
FROM SalesLT.SalesOrderDetail as sod
        JOIN SalesLT.SalesOrderHeader as soh  ON sod.SalesOrderID = soh.SalesOrderID
-- Returened 542 rows on the Adv works DB

-- Left outer join  - returns all the rows from the left table and selected ones from right
-- Copying the same example as above 

SELECT  sod.SalesOrderID, sod.OrderQty, sod.UnitPrice,
        soh.Status, soh.TotalDue
FROM SalesLT.SalesOrderDetail as sod
       LEFT OUTER JOIN SalesLT.SalesOrderHeader as soh  ON sod.SalesOrderID = soh.SalesOrderID

-- Returned 542 rows too , check for count in both tables 

SELECT COUNT(*) from SalesLT.SalesOrderDetail -- 542 

SELECT COUNT(*) from SalesLt.SalesOrderHeader -- 32 

-- Right Join for the north wind DB 

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

-- Returns all the orders and all the employees 
-- Additional line to check git integration from VSCode , this was actually done from the terminal