select s.first_name,s.last_name,sum(p.amount) total from staff as s
join payment p on s.staff_id = p.staff_id
group by first_name ,last_name
order by total desc limit 1