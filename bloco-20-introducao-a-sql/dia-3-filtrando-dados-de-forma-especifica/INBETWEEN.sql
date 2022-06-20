  -- Operador IN
  -- Forma de simplificar queries que utilizam operadores lógicos

-------------------------------------------------------------------------------------
  -- Ao invés disso:

  SELECT * FROM sakila.actor
  WHERE first_name = 'PENELOPE'
  OR first_name = 'NICK'
  OR first_name = 'ED'
  OR first_name = 'JENNIFER';

  -- Faça isso:

  SELECT * FROM sakila.actor 
  WHERE first_name IN ('PENELOPE','NICK','ED','JENNIFER');
-------------------------------------------------------------------------------------

  -- Operador BETWEEN
  
  -- Torna possível fazer pesquisas dentro de uma faixa inicial e final.
  -- Note que o MySQL inclui o valor inicial e o final nos resultados

  SELECT title, length FROM sakila.film
  WHERE length BETWEEN 50 AND 120;

  -- Usando o BETWEEN com strings

  SELECT * FROM sakila.language
  WHERE name BETWEEN 'Italian' AND 'Mandarin'
  ORDER BY name;

  -- Usando o BETWEEN com datas

  SELECT rental_id, rental_date FROM sakila.rental
  WHERE rental_date
  BETWEEN '2005-05-27' AND '2005-07-17';