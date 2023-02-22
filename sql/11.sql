/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */


select film.film_id, title, count(title) from film 
join inventory on film.film_id = inventory.film_id 
where title like 'H%' 
group by film.film_id 
order by film.title desc; 
