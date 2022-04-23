-- 1. Use sakila database.
-- 2. Get all the data from tables actor, film and customer.
SELECT *
FROM sakila.actor, sakila.film, sakila.customer;

-- 3. Get film titles.
SELECT DISTINCT(title)
FROM sakila.film;

-- 4. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film,
-- but this is a good time to think about how you might get that information in the future.

SELECT DISTINCT(name) as language 
FROM sakila.language;

-- 5.1 Find out how many stores does the company have? --> 2 stores.
SELECT COUNT(DISTINCT(store_id))
FROM sakila.store;
-- 5.2 Find out how many employees staff does the company have? --> 2 stores.
SELECT COUNT(DISTINCT(manager_staff_id)) 
FROM sakila.store;

-- 5.3 Return a list of employee first names only?
SELECT DISTINCT(first_name)
FROM sakila.staff;