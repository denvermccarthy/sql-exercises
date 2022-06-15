-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

select city.city, sum(payment.amount) from customer
left join payment on customer.customer_id = payment.customer_id
left join address on customer.address_id = address.address_id
left join city on address.city_id = city.city_id
group by city.city
order by sum(payment.amount) desc
limit 10
