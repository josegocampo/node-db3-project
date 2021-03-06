-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM "Product"
JOIN "Category" ON "Product"."CategoryId" = "Category"."Id"
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT "o".Id, CompanyName FROM "Order" AS o
JOIN "Shipper" As s ON "s"."Id" = "o"."ShipVia"  
WHERE "o"."OrderDate" < "2012-08-09"
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT "p".ProductName, Quantity FROM "OrderDetail" AS "od"
JOIN "Product" AS "p" ON "od"."ProductId" = "p"."Id" 
WHERE "od"."OrderId" = 10251
LIMIT 3
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
