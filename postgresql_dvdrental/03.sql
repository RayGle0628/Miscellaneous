select country as COUNTRY from country where country_id in
                                             (
                                                 select city.country_id from city join address a on city.city_id = a.city_id
                                                 where a.district = 'Attika'
                                                 );