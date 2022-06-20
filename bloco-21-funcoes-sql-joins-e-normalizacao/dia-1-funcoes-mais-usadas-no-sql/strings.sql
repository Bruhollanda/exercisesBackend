---------------------------------------------------------------------------------------
  SELECT UCASE('Função para converter a string em caixa alta');
    -- Irá retornar "FUNÇÃO PARA CONVERTER A STRING EM CAIXA ALTA"

---------------------------------------------------------------------------------------

  SELECT LCASE('Função para converter a string em caixa baixa');
    -- Irá retornar "FUNÇÃO PARA CONVERTER A STRING EM CAIXA BAIXA"

---------------------------------------------------------------------------------------

  -- Função para substituir parte da string por outra
  SELECT REPLACE('Oi, eu sou uma string', 'string', 'cadeia de caracteres');
    -- Irá retornar "Oi, eu sou uma cadeia de caracteres"

---------------------------------------------------------------------------------------

  -- Retorna a parte da esquerda de uma string de acordo com o número de caracteres especificado
  SELECT LEFT('Oi, eu sou uma string', 3);
    -- Irá retornar "Oi,"

---------------------------------------------------------------------------------------

  -- Retorna a parte da direita de uma string de acordo com o número de caracteres especificado
  SELECT RIGHT('Oi, eu sou uma string', 6);
    -- Irá retornar "string"

---------------------------------------------------------------------------------------

  -- Exibe o tamanho, em caracteres, da string, a função LENGTH retorna o tamanho em bytes
  SELECT CHAR_LENGTH('Oi, eu sou uma string');
    -- Irá retornar "21"

---------------------------------------------------------------------------------------

  -- Extrai parte de uma string de acordo com o índice de um caractere inicial e a quantidade de caracteres a extrair
  SELECT SUBSTRING('Oi, eu sou uma string', 5, 2);
    -- Irá retornar "eu"

    -- Se a quantidade de caracteres a extrair não for definida, então a string será extraída do índice inicial definido, até o seu final
  SELECT SUBSTRING('Oi, eu sou uma string', 5);
  -- Irá retornar "eu sou uma string"

---------------------------------------------------------------------------------------

  -- Utilizam-se as chaves das tabelas para manipulação das strings salvas
  -- Ex.:

  SELECT UCASE(title) FROM sakila.film LIMIT 10;
  SELECT LCASE(title) FROM sakila.film LIMIT 10;
  SELECT REPLACE(title, 'ACADEMY', 'FOO') FROM sakila.film WHERE film_id = 1;
  SELECT LEFT(title, 7) FROM sakila.film WHERE film_id = 1;
  SELECT RIGHT(title, 8) FROM sakila.film WHERE film_id = 1;
  SELECT CHAR_LENGTH(title) FROM sakila.film WHERE film_id = 1;
  SELECT SUBSTRING(title, 5, 2) FROM sakila.film WHERE film_id = 1;
  SELECT SUBSTRING(title, 5) FROM sakila.film WHERE film_id = 1;

---------------------------------------------------------------------------------------