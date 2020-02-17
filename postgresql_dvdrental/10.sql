select c.first_name as CUSTOMER,s.first_name as STAFF,c2.city as CITY
from staff as s left join payment p on s.staff_id = p.staff_id
left  join customer c on p.customer_id = c.customer_id
left  join address a on c.address_id = a.address_id
left  join city c2 on a.city_id = c2.city_id
where s.address_id = c.address_id
and c2.city_id = a.city_id
group by CITY,CUSTOMER,STAFF
order by c2.city;