-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
select country.country, avg(payment.amount) from customer
left join payment on customer.customer_id = payment.customer_id
left join address on customer.address_id = address.address_id
left join city on address.city_id = city.city_id
left join country on city.country_id = country.country_id
group by country.country
order by avg(payment.amount) desc
limit 10
