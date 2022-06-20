  INSERT INTO nome_da_tabela (coluna1, coluna2)
  VALUES ('valor_coluna1', 'valor_coluna2');

  -- Inserindo várias linhas de uma vez

  INSERT INTO nome_da_tabela (coluna1, coluna2) VALUES
  ('valor_1','valor_2'),
  ('valor_3','valor_4'),
  ('valor_5','valor_6');

  -- Ignorando linhas existentes

  INSERT IGNORE INTO pessoas (id, name) VALUES
  (4,'Gloria'), -- Sem o IGNORE, essa linha geraria um erro e o INSERT não continuaria.
  (5,'Amanda');

  -- INSERT SELECT (Inserindo dados de uma outra tabela)
  -- Extraindo a coluna1 e a coluna2 da tabelaB e as inserindo na tabelaA, de acordo com a condição que for passada no WHERE.

  INSERT INTO tabelaA (coluna1, coluna2)
    SELECT tabelaB.coluna1, tabelaB.coluna2 FROM tabelaB
    WHERE tabelaB.nome_da_coluna <> 'algumValor'
    ORDER BY tabelaB.coluna_de_ordenacao;

  --Com essa funcionalidade, é fácil criar tabelas temporárias para testes ou por necessidade. Por exemplo, para trazer os dados da tabela sakila.staff para a tabela sakila.actor, poderíamos fazer:

  INSERT INTO sakila.actor (first_name, last_name)
	SELECT first_name, last_name FROM sakila.staff;