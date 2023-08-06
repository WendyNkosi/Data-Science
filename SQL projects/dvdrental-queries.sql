SELECT COUNT(amount) FROM payment
WHERE amount >5;

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

SELECT DISTINCT (district) FROM address
ORDER BY district;

SELECT * FROM film
WHERE rating='R' AND replacement_cost BETWEEN 5 AND 15;

SELECT * FROM film
WHERE title LIKE '%Truman%';

SELECT staff_id,COUNT(*) FROM payment
GROUP BY staff_id;

SELECT rating,AVG(replacement_cost) FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost);

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount)>=40;


