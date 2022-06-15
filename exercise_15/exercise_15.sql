-- the total run time of all inventory items if they were all played back to back
select sum(length) from inventory
left join film on inventory.film_id = film.film_id
where inventory.inventory_id is not null