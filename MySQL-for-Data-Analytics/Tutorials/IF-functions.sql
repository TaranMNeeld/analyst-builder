# IF Function

# IF(condition, if true do this, if false do this)

# Note: All IF functions are using the bakery db

# IF is used in the SELECT statement to return a new column
# Note: You can use multiple IF functions in a SELECT statement
SELECT tip,
IF(tip > 1, 'Amazing', 'Cheap...') AS tip_details
FROM customer_orders
;

SELECT order_total, tip,
IF(tip > 2, order_total * 0.75, order_total * 1.1) AS new_total
FROM customer_orders
;