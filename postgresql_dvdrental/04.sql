select f.first_name as FIRST_NAME,count(f.first_name) as NUMBER from customer as f group by f.first_name
order by f.first_name