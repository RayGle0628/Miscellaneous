select count(film_id) from film
where rental_rate >(
    select avg(rental_rate) from film
    );
