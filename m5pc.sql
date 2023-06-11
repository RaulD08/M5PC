
---- punto 4
---------- punto 4.1
insert into customer(customer_id,store_id,first_name,last_name,email,address_id,activebool,create_date,last_update,active)
values (?,?,?,?,?,?,?,?,?,?);

update customer
set (customer_id,store_id,first_name,last_name,email,address_id,activebool,create_date,last_update,active)
where (condicion);
 
delete from customer
where (condicion);

--------
insert into staff(staff_id, first_name, last_name, addres_id, email, store_id, active, username, password, last_update, picture)
values (?,?,?,?,?,?,?,?,?,?,?);

update staff
set (staff_id, first_name, last_name, addres_id, email, store_id, active, username, password, last_update, picture)
where (condicion);
 
delete from staff
where (condicion);

--------
insert into actor(actor_id, first_name, last_name, last_update)
values (?,?,?,?);

update actor
set (actor_id, first_name, last_name, last_update)
where (condicion);
 
delete from actor
where (condicion);

---------- punto 4.2

select rental.*, customer.*
from rental
join customer 
on rental.customer_id  = customer.customer_id
where extract (year from rental.rental_date) = 2005 
and extract (month from rental.rental_date) = 8;

---------- punto 4.3

select date(payment_date) as fecha , sum(amount) as suma 
from payment
group by fecha
order by fecha;

---------- punto 4.4

select *
from film
where film.release_year = 2006
and rental_rate > 4; 

---- punto 5

select table_name, column_name, is_nullable, data_type
from information_schema.columns
where table_schema = 'public'
order by table_name;


