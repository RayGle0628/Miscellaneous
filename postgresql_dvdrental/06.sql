select f.title as TITLE,count(i.inventory_id) as NUM_COPIES
from film as f join inventory i on f.film_id = i.film_id
group by f.title
order by NUM_COPIES desc,f.title