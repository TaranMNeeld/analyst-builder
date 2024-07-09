# Inner Join
# You can join multiple tables if needed
# You can also join ON multiple conditions using the AND keyword

USE bakery;

# Note: JOIN is an inner join by default
# Use aliasing to make joining tables easier
# Inner joins return all values in both tables where a primary key matches a foreign key
SELECT *
FROM customers c
INNER JOIN customer_orders co
	ON  c.customer_id = co.customer_id
ORDER BY c.customer_id
;

SELECT p.product_name, SUM(order_total) as Total
FROM products p
INNER JOIN customer_orders co
	ON p.product_id = co.product_id
GROUP BY product_name
ORDER BY 2 # Note: The number 2 represents the column number rather than the column name
;

SELECT *
FROM suppliers s
INNER JOIN ordered_items oi
	ON s.supplier_id = oi.shipper_id # Note: The primary and foreign keys may not always have matching names. It is important to be familiar with the data when using joins
;

