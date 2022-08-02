-----------------------------------------------------------------------------------------------------------------
  -- Podemos usar o HAVING para filtrar resultados agrupados, assim como usamos o SELECT...WHERE para filtrar resultados individuais.
    SELECT first_name, COUNT(*) AS nomes_cadastrados -- usando o AS para dar nomes às colunas de agregação
    FROM sakila.actor
    GROUP BY first_name
    HAVING nomes_cadastrados > 2;
    -- Busca o nome e a quantidade de nomes cadastrados na tabela sakila.actor e os agrupa por quantidade. Por fim, filtramos os resultados agrupados usando o HAVING, para que somente os nomes que estão cadastrados mais de duas vezes sejam exibidos.



-----------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------