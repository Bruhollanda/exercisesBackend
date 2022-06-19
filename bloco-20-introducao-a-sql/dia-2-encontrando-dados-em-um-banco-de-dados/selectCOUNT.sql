/*
Mostrar a quantidade de todos dados que há em uma tabela
*/

SELECT COUNT (*) FROM sakila.actor;

/*
Mostrar a quantidade de dados que há em uma lista distinta
*/

SELECT COUNT (DISTINCT first_name, last_name) FROM sakila.actor;
