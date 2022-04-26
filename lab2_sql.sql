
-- 1. Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM sakila.actor
WHERE first_name='Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
SELECT *
FROM sakila.actor
WHERE last_name='Johansson';

-- 3. How many films (movies) are available for rent?
SELECT COUNT(rental_id)
FROM sakila.rental;

-- 4. How many films have been rented?
SELECT COUNT(DISTINCT(film_id))
FROM sakila.film
WHERE rental_duration!=0;

-- 5. What is the shortest and longest rental period?
SELECT MAX(rental_duration), MIN(rental_duration)
FROM sakila.film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(length) as max_duration, MIN(length) as min_duration
FROM sakila.film;

-- 7. What's the average movie duration?
SELECT AVG(length) as average_duration
FROM sakila.film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select date_format(sec_to_time(avg(length)*60), '%H:%i') as average_duration_min_hours
from sakila.film;

-- 9. How many movies longer than 3 hours?
SELECT COUNT(DISTINCT(title))
FROM sakila.film
WHERE length>180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT email
FROM sakila.customer;


-- 11. What's the length of the longest film title? 
SELECT MAX(length(title))
FROM sakila.film;
SELECT title
FROM sakila.film
WHERE length(title)=27;



