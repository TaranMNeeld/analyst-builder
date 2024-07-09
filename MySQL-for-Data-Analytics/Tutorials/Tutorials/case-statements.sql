# Case Statement

# Using the bakery db

# This is a good replacement for multiple IF functions
SELECT units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'ORDER NOW!'
    WHEN units_in_stock BETWEEN 21 AND 50 THEN 'Check in 3 days'
    ELSE 'In stock'
END AS 'Order Status'
FROM products
;

SELECT order_id,
order_date,
CASE
	WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
    WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
    ELSE 'Archived'
END AS 'Years'
FROM customer_orders
;