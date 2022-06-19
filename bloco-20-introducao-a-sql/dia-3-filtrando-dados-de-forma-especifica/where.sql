/*
  OPERADORES LÓGICOS

  = -> IGUAL
  <> -> DIFERENTE DE
  > -> MAIOR QUE
  < -> MENOR QUE
  >= -> MAIOR OU IGUAL A
  <= -> MENOR OU IGUAL A
  AND -> OPERADOR LÓGICO 'E'
  OR -> OPERADOR LÓGICO 'OU'
  IS -> COMPARA COM VALORES BOOLEANOS
  NOT -> NEGAÇÃO
*/

-------------------------------------------------------------------------------------
  SELECT * FROM sakila.actor
  WHERE first_name = 'Susan';
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.film
  WHERE title <> 'ALIEN CENTER'
  AND replacemente_cost > 20
  AND rating = 'G';
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.rental
  WHERE return_date IS NULL;
-------------------------------------------------------------------------------------
  SELECT * FROM sakila.payment
  WHERE (amount = 0.99 OR amount = 2.99) AND staff_id = 2;
-------------------------------------------------------------------------------------