(select f.title as TITLE  from film as f
join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
join payment p on r.rental_id = p.rental_id
join staff s on p.staff_id = s.staff_id
join store s2 on s.store_id = s2.store_id
where s2.store_id = 1
group by f.title
order by count(f.title) desc ,f.title limit 100)
except
(
    select f.title as TITLE  from film as f
join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
join payment p on r.rental_id = p.rental_id
join staff s on p.staff_id = s.staff_id
join store s2 on s.store_id = s2.store_id
where s2.store_id = 2
    group by f.title
    order by count(f.title) desc,f.title limit 57)