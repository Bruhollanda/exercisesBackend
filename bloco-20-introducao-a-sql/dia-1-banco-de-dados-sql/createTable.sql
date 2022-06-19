/*
Nome da tabela: filme
Colunas:

filme_id - primary key, tipo int, incrementa por 1 cada vez que um valor é inserido automaticamente;
descricao - não permite nulos, tipo texto (varchar(100));
ano_lancamento - não permite nulos, tipo int;
nota - permite nulos, tipo int;
*/

CREATE TABLE sakila.filme (
  filme_id INT,
  descricao VARCHAR(100) NOT NULL,
  ano_lancamento INT NOT NULL,
  nota INT,
  PRIMARY KEY (filme_id));
  

  /*
  Analise a tabela city e encontre a tabela à qual a coluna country_id faz referência.
  */

  SELECT country_id FROM sakila.city;
