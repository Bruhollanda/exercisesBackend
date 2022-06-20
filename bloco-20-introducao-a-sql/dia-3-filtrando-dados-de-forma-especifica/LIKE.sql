/*
  O LIKE é usado para buscar por meio de uma sequência específica de caracteres

  Dois modificadores, são normalmente usados com o LIKE:
  % -> O sinal de percentual, que pode representar zero, um ou múltiplos caracteres
  _ -> O underscore (às vezes chamado de underline, no Brasil), que representa um único caractere
*/

-------------------------------------------------------------------------------------
  SELECT * FROM sakila.film
  WHERE title LIKE '%don';
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.film
  WHERE title LIKE 'plu%';
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.film
  WHERE title LIKE '%plu%';
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.film
  WHERE title LIKE 'p%r';
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.film
  WHERE title LIKE '_C%';
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.film
  WHERE title LIKE '________';
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.film
  WHERE title LIKE 'E__%';
-------------------------------------------------------------------------------------