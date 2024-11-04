--How many payment transaction is > $5?
SELECT * FROM payment;
SELECT count(amount) from payment 
where amount > 5.00;

--How many actors have a first name that starts with the letter p?
SELECT * FROM actor;
SELECT COUNT(first_name) from actor
where first_name like 'P%';

--How many Unique districts are our customer from?
SELECT * FROM address;
SELECT COUNT(Distinct district) from address;

--Retrieve the list of names for those distinct district from the previous question.
SELECT Distinct district from address;

--How many films have the word Truman somewhere in the tittle?
SELECT * FROM film;
SELECT count(title) from film 
where title like '%Truman%';

--TABLE
CREATE TABLE Morechud_NG(
id int Primary key,
first_name varchar(15) not null,
last_name varchar(15)not null,
email varchar(250),
sign_Up_date DATE,
timespent varchar(10)
);

SELECT * FROM morechud_ng;

--What customer has the highest customer ID number whose name starts with an ‘E’ and has an 
addressID lower than 500?
SELECT * FROM customer; 
SELECT customer_id,first_name,last_name,address_id from customer
 where first_name like 'E%' and address_id < 500
  order by customer_id desc limit 1;

  SELECT customer_id,first_name,last_name,address_id from customer
 where first_name like 'E%' and address_id < 500;
  

  --Return the customer IDs of customers who have spent at least $110 with the staff member 
who has an ID of 2. 
SELECT * FROM payment;
SELECT customer_id,amount,staff_id from payment
where amount = 110 and staff_id = 2;

-- How many films have a rating of R and a replacement cost between $5 and $15? 
SELECT * from film; 
SELECT count(*) from film
where rating = 'R' 
and 
replacement_cost between 5 and 15;


SELECT * from film
where rating = 'R' 
order by rating desc;

-- What is the maximum payment transaction done by the customer?
SELECT MAX(amount) as MaxPayment from Payment;

SELECT * FROM payment;
SELECT payment_id, amount as Bfw, Payment_date from payment
where amount >= 6;

SELECT * FROM film;

SELECT film_id, title,release_year, special_features, replacement_cost from film 
group by film_id
order by release_year desc;

