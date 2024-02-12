use mavenmovies;
-- Q1. Identify the primary keys and foreign keys in maven movies db. Discuss the differences
select * from information_schema.key_column_usage;

-- Q2. List all details of actor;
select * from actor;

-- Q3. List all customer information from db
select * from customer;

-- Q4. List different countries.
select distinct country from country;

-- Q5: Display all active customers.
select first_name, last_name from customer where active=1;

-- Q6. List of all rental IDs for customer with ID 1.
select rental_id from rental where customer_id=1;

-- Q7. Display all the films whose rental duration is greater than 5 .
select film_id, title, rental_duration from film where rental_duration>5;

-- Q8. List the total number of films whose replacemnet cost is greater than $15 and less than  $20
select * from film;
select count(film_id),replacement_cost from film where replacement_cost between 15 and 20 group by replacement_cost;

-- Q9. Display the count of unique first names of actors.
select count(*) as CountOfUniqueFnames, first_name from actor group by first_name;
select count(distinct first_name) from actor;

-- Q10. Display the first 10 recods from the customer table
select * from customer limit 10;

-- Q11. Display the first 3 records from the customer table whose first name starts with 'b'
select * from customer where first_name like 'b%' limit 3;

-- Q12. Display the names of first 5 movies which are rated as G
select title from film where rating = 'G' limit 5;

-- Q13. Find all customers whose first name starts with "a".
select first_name, last_name from customer where first_name like 'a%';

-- Q14. Find all customers whose first name ends with "a".
select first_name, last_name from customer where last_name like '%a';

-- Q15. Display the list of first 4 cities which start and end with ‘a’.
select * from city;
select city from city where city like 'a%a' limit 4;

-- Q16. Find all customers whose first name have "NI" in any position
select first_name from customer where first_name like '%ni%';

-- Q17. Find all customers whose first name have "r" in the second position
select first_name from customer where first_name like '_r%';

-- Q18.  Find all customers whose first name starts with "a" and are at least 5 characters in length.
select first_name from customer where first_name like 'a%' and length(first_name)>5;

-- Q19. Find all customers whose first name starts with "a" and ends with "o"
select first_name from customer where first_name like 'a%o';

-- Q20. Get the films with pg and pg-13 rating using IN operator.
select * from film;
select title, rating from film where rating IN ('pg', 'PG-13');

-- Q21. Get the films with length between 50 to 100 using between operator.
select title from film where length between 50 and 100;

-- Q22. Get the top 50 actors using limit operator.
select * from actor limit 50;

-- Q23. Get the distinct film ids from inventory table
select distinct(film_id) from inventory;
