-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category
SELECT title
From film

LEFT JOIN film_category
on film.film_id = film_category.film_id

LEFT JOIN category
on film_category.film_id = category.category_id

WHERE film_category.category_id = 1
ORDER BY film.title