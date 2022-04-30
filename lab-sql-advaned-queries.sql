#In this lab, you will be using the Sakila database of movie rentals.
# List each pair of actors that have worked together.
# For each film, list actor that has acted in more films.

USE sakila;

SELECT
	a1.actor_id, a2.actor_id, a3.first_name, a3.last_name, a4.first_name, a4.last_name
FROM
	film_actor a1
	JOIN
		film_actor a2
		ON
		a1.actor_id < a2.actor_id AND a1.film_id = a2.film_id
	JOIN
		actor a3
		ON
			a1.actor_id = a3.actor_id
	JOIN
		actor a4
	ON
		a2.actor_id = a4.actor_id;
        
# For each film, list actor that has acted in more films.

SELECT
	MAX(f.film_id), fa.actor_id
FROM
	film f
JOIN
	film_actor fa
ON
	f.film_id = fa.film_id
GROUP BY
	fa.actor_id;
	
