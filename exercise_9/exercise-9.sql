-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL
select title from film
left join inventory on film.film_id = inventory.film_id
left join rental on inventory.inventory_id= rental.inventory_id
where rental.rental_id is null and inventory.inventory_id is not null