select p.name, m.earnings_rank
from movies m, person p, oscar o
where rating = (
  	SELECT max(m.rating)
  	FROM movies m, oscar o
    where o.type = 'Picture'
    and m.id = o.movie_id
    
  ) and o.type = 'Picture'
    and m.id = o.movie_id
    and p.id = o.person_id
  ORDER BY earnings_rank LIMIT 1;
  