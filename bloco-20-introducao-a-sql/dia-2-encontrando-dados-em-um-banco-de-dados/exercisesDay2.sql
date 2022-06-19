/*
Escreva uma query que selecione todas as colunas da tabela city;
*/

SELECT * FROM sakila.city;

/*
Escreva uma query que exiba apenas as colunas first_name e last_name da tabela customer;
*/

SELECT first_name, last_name FROM sakila.customer;

/*
Escreva uma query que selecione todas as colunas da tabela rental;
*/

SELECT * FROM sakila.rental;

/*
Escreva uma query que exiba o título, a descrição e a data de lançamento dos filmes registrados na tabela film;
*/

SELECT title, description, release_year FROM sakila.film;


/*
Exemplo de concatenar dados de duas colunas em uma nova:
*/

SELECT CONCAT(first_name, ' ', last_name) AS 'nome_completo' FROM sakila.actor;

SELECT CONCAT(title, ' ', release_year) AS 'lançamento_do_filme' FROM sakila.film;

SELECT CONCAT(address, ' ', district) AS 'endereço' FROM sakila.address;