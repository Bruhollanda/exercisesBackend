/*
Limitar a quantidade aos 10 primeiros resultados que irão aparecer em uma seleção
*/

SELECT * FROM sakila.rental LIMIT 10;

/*
LIMIT OFFSET
Continuará mostrando 10 resultados, porém irá pular as 3 primeiras linhas da lista
*/

SELECT * FROM sakila.rental LIMIT 10 OFFSET 3;