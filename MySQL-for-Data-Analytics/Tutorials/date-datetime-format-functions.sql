# Date and Datetime Format Functions

#Returns current datetime
SELECT NOW();

#Returns current date
SELECT CURDATE();

#Returns current time
SELECT CURTIME();

#Returns year of a date or datetime
SELECT YEAR(NOW());

#Returns month of a date or datetime
SELECT MONTH(NOW());

#Returns dat of a date or datetime
SELECT DAY(NOW());

#Returns the name of the weekday of a date or datetime
SELECT DAYNAME(NOW());

#Returns the name of the month of a date or datetime
SELECT MONTHNAME(NOW());

#The formats the date in a specified order
#Note: 'm' returns month number, 'M' returns month name
#Note: You can also add characters in between the format indicators
SELECT DATE_FORMAT(CURDATE(), '%y %m %d');
SELECT DATE_FORMAT(CURDATE(), '%m %d %y');
SELECT DATE_FORMAT(CURDATE(), '%d %m %y');
SELECT DATE_FORMAT(CURDATE(), '%d-%m/%y');
