select c.name as CATEGORY,sum(p.amount) as REVENUE
from category as c join film_category fc on c.category_id = fc.category_id
join film f on fc.film_id = f.film_id
join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
join payment p on r.rental_id = p.rental_id

group by c.name
order by REVENUE desc limit 1