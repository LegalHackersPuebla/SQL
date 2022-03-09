USE classicmodels;

SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE 'A%';


SELECT employeeNumber, lastName, firstName
FROM employees
WHERE lastName LIKE '%on';


SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE '%on%';


SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE 'G_____';


SELECT employeeNumber, lastName, firstName
FROM employees
WHERE lastName NOT LIKE '%B';


SELECT productCode, productName
FROM products
WHERE productCode LIKE '%_20%';


SELECT orderNumber, sum(priceEach) total
FROM orderdetails
GROUP BY orderNumber;


SELECT year(orderDate) anio, count(*)
FROM orders
GROUP BY anio;


SELECT lastName, firstName
FROM employees
WHERE officeCode IN (SELECT officeCode FROM offices WHERE country = 'USA');


SELECT customerNumber, checkNumber, amount
FROM payments
WHERE amount = (SELECT max(amount) FROM payments);


SELECT customerNumber, checkNumber, amount
FROM payments
WHERE amount > (SELECT avg(amount) FROM payments);


SELECT customerName
FROM customers
WHERE customerNumber NOT IN (SELECT customerNumber FROM orders);


SELECT max(quantityOrdered), min(quantityOrdered), avg(quantityOrdered)
FROM orderdetails;


SELECT status, count(*)
FROM orders
GROUP BY status;






























