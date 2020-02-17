select c2.city as CITIES,sum(p.amount) as REVENUE
from payment as p  join customer c on p.customer_id = c.customer_id
join address a on c.address_id = a.address_id
join city c2 on a.city_id = c2.city_id
group by c2.city
order by REVENUE asc,c2.city