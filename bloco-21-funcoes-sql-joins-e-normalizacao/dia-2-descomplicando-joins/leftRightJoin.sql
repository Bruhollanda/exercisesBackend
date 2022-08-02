-- Sintaxe LEFT JOIN

  SELECT
      c.customer_id,
      c.first_name,
      c.last_name,
      a.actor_id,
      a.first_name,
      a.last_name
  FROM sakila.customer AS c
  LEFT JOIN sakila.actor AS a
  ON c.last_name = a.last_name
  ORDER BY c.last_name;

-- Sintaxe RIGHT JOIN

  SELECT
      c.customer_id,
      c.first_name,
      c.last_name,
      a.actor_id,
      a.first_name,
      a.last_name
  FROM sakila.customer AS c
  RIGHT JOIN sakila.actor AS a
  ON c.last_name = a.last_name
  ORDER BY c.last_name;
