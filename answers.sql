
/*
Question 1 🧑‍💼
Get firstName, lastName, email, and officeCode of all employees
using INNER JOIN with the offices table
*/

SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o
ON 
    e.officeCode = o.officeCode;

/*
Question 2 🛍️
Get productName, productVendor, and productLine
using LEFT JOIN with the productlines table
*/

SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl
ON 
    p.productLine = pl.productLine;

/*
Question 3 📦
Retrieve orderDate, shippedDate, status, and customerNumber for first 10 orders
using RIGHT JOIN with the customers table
*/

SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o
ON 
    c.customerNumber = o.customerNumber
ORDER BY 
    o.orderDate
LIMIT 10;
