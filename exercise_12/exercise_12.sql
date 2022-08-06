-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city, 
SUM (payment.amount)

from city

LEFT JOIN address
on address.city_id = city.city_id

LEFT JOIN customer
on address.address_id = customer.address_id

LEFT JOIN rental
on customer.customer_id = rental.customer_id

LEFT JOIN payment 
on payment.customer_id = rental.customer_id

WHERE payment.amount IS NOT NULL
GROUP BY city.city
ORDER BY SUM DESC
LIMIT 10
