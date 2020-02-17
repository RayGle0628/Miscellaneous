select  f.title as TITLE from film as f
join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
join payment p on r.rental_id = p.rental_id
join staff s on p.staff_id = s.staff_id
join store s2 on s.staff_id = s2.manager_staff_id
where f.title not in (select f.title as title2
    from  film  as f
    join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
join payment p on r.rental_id = p.rental_id
join staff s on p.staff_id = s.staff_id
join store s2 on s.staff_id = s2.manager_staff_id
    group by f.title
   order by count(f.film_id) desc  limit 100 )
group by f.title
order by count(f.film_id)  desc  limit 100