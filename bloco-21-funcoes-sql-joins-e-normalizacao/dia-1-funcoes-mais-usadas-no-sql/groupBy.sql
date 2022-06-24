-----------------------------------------------------------------------------------------------------------------
  -- GROUP BY
    -- Resultados de uma query podem ser agrupados por uma ou mais colunas.
    SELECT coluna(s) FROM tabela
    GROUP BY coluna(s);

    -- Agrupar registros pelo valor de uma coluna, exibindo apenas um registro de cada valor
    SELECT first_name FROM sakila.actor
    GROUP BY first_name;

  -- O GROUP BY removerá duplicações, retornando apenas um valor da coluna usada no agrupamento

-----------------------------------------------------------------------------------------------------------------
  -- Utilizar o GROUP BY em conjunto com o AVG, MIN, MAX, SUM ou COUNT. 

    -- Contagem dos nomes dos atores
    SELECT first_name, COUNT(*) FROM sakila.actor
    GROUP BY first_name;

    -- Média de duração de filmes agrupados por classificação indicativa
    SELECT rating, AVG(length)
    FROM sakila.film
    GROUP BY rating;

    -- Valor mínimo de substituição dos filmes agrupados por classificação indicativa
    SELECT rating, MIN(replacement_cost)
    FROM sakila.film
    GROUP BY rating;

    -- Valor máximo de substituição dos filmes agrupados por classificação indicativa
    SELECT rating, MAX(replacement_cost)
    FROM sakila.film
    GROUP BY rating;

    -- Custo total de substituição de filmes agrupados por classificação indicativa
    SELECT rating, SUM(replacement_cost)
    FROM sakila.film
    GROUP by rating;
    
-----------------------------------------------------------------------------------------------------------------
