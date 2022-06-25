------------------------------------------------------------------------------------------  
  -- Calcular e gerar novos dados com as principais funções matemáticas disponíveis no MySQL.

  -- Adição:
    SELECT 5 + 5;
  -- Subtração:
    SELECT 5 - 5;
  -- Multiplicação:
    SELECT 5 * 5;
  -- Divisão:
    SELECT 5 / 5;

------------------------------------------------------------------------------------------
  -- Utilizando colunas da base de dados:
    SELECT rental_duration + rental_rate FROM sakila.film LIMIT 10;
    SELECT rental_duration - rental_rate FROM sakila.film LIMIT 10;
    SELECT rental_duration / rental_rate FROM sakila.film LIMIT 10;
    SELECT rental_duration * rental_rate FROM sakila.film LIMIT 10;

------------------------------------------------------------------------------------------
  -- Divisão de inteiros com DIV:
    SELECT 10 DIV 3; -- Irá retornar 3
    SELECT 10 DIV 2; -- Irá retornar 5
    SELECT 14 DIV 3; -- Irá retornar 4
    SELECT 13 DIV 2; -- Irá retornar 6

------------------------------------------------------------------------------------------

  -- Resto de divisão com MOD:
    SELECT 10 MOD 3; -- Irá retornar 1
    SELECT 10 MOD 2; -- Irá retornar 0
    SELECT 14 MOD 3; -- Irá retornar 2
    SELECT 13 MOD 2; -- Irá retornar 1
    SELECT 10.5 MOD 2; -- Irá retornar 0.5, ou seja, 2 + 2 + 2 + 2 + 2 = 10, restando 0.5

------------------------------------------------------------------------------------------
  -- Arredondando valores

  -- Podemos omitir ou especificar quantas casas decimais queremos
    SELECT ROUND(10.4925); -- Irá retornar 10
    SELECT ROUND(10.5136); -- Irá retornar 11
    SELECT ROUND(-10.5136); -- Irá retornar 11
    SELECT ROUND(10.4925, 2); -- Irá retornar 10.49
    SELECT ROUND(10.4925, 3); -- Irá retornar 10.493

  -- O arredondamento sempre para cima pode ser feito com o CEIL:
    SELECT CEIL(10.51); -- Irá retornar 11
    SELECT CEIL(10.49); -- Irá retornar 11
    SELECT CEIL(10.2); -- Irá retornar 11

  -- O arredondamento sempre para baixo pode ser feito com o FLOOR:
    SELECT FLOOR(10.51); -- Irá retornar 10
    SELECT FLOOR(10.49); -- Irá retornar 10
    SELECT FLOOR(10.2); -- Irá retornar 10

------------------------------------------------------------------------------------------
  -- Exponenciação e raiz quadrada

  -- Elevando um número X à potência Y usando a função POW:
    SELECT POW(2, 2); -- Irá retornar 4
    SELECT POW(2, 4); -- Irá retornar 16

  -- Encontrando a raiz quadrada de um valor usando SQRT:
    SELECT SQRT(9); -- Irá retornar 3
    SELECT SQRT(16); -- Irá retornar 4

------------------------------------------------------------------------------------------
  -- Gerando valores aleatórios
  -- Para gerar um valor aleatório entre 0 e 1:
    SELECT RAND();

  -- Para gerar um valor entre 7 e 13:
    SELECT ROUND(7 + (RAND() * 6));
    -- O cálculo que é feito é o seguinte: (7 + (0.0 a 1.0 * 6))

------------------------------------------------------------------------------------------