# Cast and Convert Functions

# Using the bakery db

#Note: You cannot cast anything into anything
# For example, you cannot cast 'Taran' into an integer

#CAST changes a value into a different datatype
SELECT CAST('2024-01-01' AS DATETIME);

#CAST and CONVERT return the same output
SELECT birth_date,
CAST(birth_date AS DATETIME),
CONVERT(birth_date, DATETIME)
FROM customers
;
