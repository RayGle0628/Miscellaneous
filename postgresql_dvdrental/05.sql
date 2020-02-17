select count(f1.film_id) as NUM_MOVIES, c.first_name as FIRST_NAME from film as f1
join inventory i on f1.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
join customer c on r.customer_id = c.customer_id
where c.first_name='Helen'
group by c.first_name;