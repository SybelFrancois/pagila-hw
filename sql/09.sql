/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */


select first_name, last_name, sum(amount) as sum from staff
inner join payment on staff.staff_id = payment.staff_id 
where date_trunc('day', payment_date) between '2020-01-01' and '2020-01-31' 
group by first_name, last_name;
