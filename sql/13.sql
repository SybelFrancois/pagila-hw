/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */


select film.film_id, film.title, language.language_id, language.name 
from film join language on film.language_id = language.language_id 
where film.title like 'K%' or film.title like 'Q%' 
and language.name = 'English' 
group by film.film_id, language.language_id, language.name 
order by film.title asc;
