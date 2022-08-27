
------Actor: Sinal de menor e igual e % ao final ------------------------------------------------------------------------------------------
select * from actor;

select first_name, last_name from actor;
select * from actor where first_name like 'Woody';
select * from actor where first_name like 'T%' and last_name like 'T%';
select * from actor where actor_id <= 10;

------Adress: Procura de enderecos com a letra do inicio apos os numeros ------------------------------------------------------------------
select * from address;

select address, district from address;
select * from address where address like '%T%';
select * from address where address like '%T%' and district like 'N%';
select * from address where address_id > 10 and address_id < 20;

------Category: Selecionando a melhor categoria!-------------------------------------------------------------------------------------------
select * from category;

select category_id, name from category;
select * from category where name like 'S%';
select * from category where category_id > 1 and name like 'Animation';
select * from category where category_id > 2 and category_id < 15;

------City: Procura com mais de uma letra no meio e ao final-------------------------------------------------------------------------------
select * from city;

select city, country_id from city;
select * from city where city like '%sz%';
select * from city where city like '%ton' and country_id > 100;
select * from city where country_id > 100;

------Country: Uso do 'Between' -----------------------------------------------------------------------------------------------------------
select * from country;

select country_id, country from country;
select * from country where country like '%d%';
select * from country where country like '%d%' and last_update between '2006-02-14' and '2006-02-16';
select * from country where country_id limit 15;

------Customer: Uso do 'Limit' -------------------------------------------------------------------------------------------------------
select * from customer;

select customer_id, customer from customer;
select * from customer where email like '%johnson%';
select * from customer where last_name like '%Ely%' and email like '%e%';
select * from customer limit 4;

------Film: Um reflexo impressionante de um gato e uma mulher que deve encontrar um astronauta no Japao antigo ???-------------------------
----------: Novo objetivo: Conseguir bater essa criatividade de titulo!! kkk --------------------------------------------------------------
select * from film;

select film_id, film from film;
select * from film where description like '%Cat%Woman%';
select * from film where release_year > 2000;
select * from film where rental_duration > 5;

------Film Category: Treinando o JOIN com o ALIAS------------------------------------------------------------------------------------------
select * from film_category;

select * from film f
join film_category fc on f.film_id = fc.category_id;

select f.title from film f
join category c on f.film_id = c.category_id;

------Invetory: Uso do COUNT e GROUP BY ---------------------------------------------------------------------------------------------------
select * from inventory;

select count(inventory_id) from inventory i group by i.film_id;
select count(film_id) from inventory i group by i.store_id;

------Language: Treinando o JOIN com o CTRL + SHIFT + F ------------------------------------------------------------------------------------

select language_id, name from language;

select
	*
from
	language l
join city c on
	l.language_id = c.city_id;

select language_id, name from language;
select * from language where name like '%e%';
select * from language where language_id < 4;

------Payment: Treinando INNER JOIN (nao tem numero em comum mas o codigo esta rodando!! ------------------------------------------
select
	*
from
	payment p
inner join rental ri on
	p.payment_id = ri.rental_id ;

select payment_id, rental_id from payment;
select * from film_actor where film_actor like '%a';
select * from film_actor where rental_id > 2000;
select * from payment where payment_id > 17200;


------Rental: Utilizado junto com a aula para treinar o SUM e o AS --------------------------------------------------------------------------------------------
select * from rental;

select
	f.film_id as id,
	f.title as produto,
	f.rental_duration as quantidade,
	f.rental_rate as preco,
	sum(rental_duration * rental_rate) as valortotal
from
	film f
group by
	f.film_id;

------Staff: Praticando o JOIN e pesquizando com 'Password'----------------------------------------------------------------------------------------------------
select * from staff;

select
	first_name,
	last_name
from
	staff sta
join store sto on
	sta.staff_id = sto.store_id;

select first_name, username from staff;
select * from staff where email like '%a%';
select * from staff where password like '%60%';
select * from staff where store_id > 1;

------Store: Aplicando o LEFT JOIN --------------------------------------------------------------------------------------------------------
select
	*
from
	store s
left join staff st on
	s.store_id = st.staff_id;

select store_id, manager_staff_id from store;
select * from store where store_id > 1;
select * from store where address_id < 2;





	




