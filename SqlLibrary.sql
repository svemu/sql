
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

