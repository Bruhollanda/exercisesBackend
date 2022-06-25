  # JOIN


## O QUE É:
    Função para combinar, em um mesmo resultado, duas ou mais tabelas.

  ### INNER JOIN
    Retorna todos os resultados em que a condição da cláusula ON for satisfeita.

  ### POR QUE UTILIZAR ALIAS (AS)?
    É usado para "apelidar" qualquer parte da query. Ajuda o banco de dados a identificar a qual coluna estamos nos referindo, evitando erros de ambiguidade em nomes de colunas.
    A palavra-chave "AS" pode ser omitida, passando o alias diretamente após o nome da tabela:
      ##### SELECT a.first_name, a.actor_id, f.actor_id
      ##### FROM sakila.actor a
      ##### INNER JOIN sakila.film_actor f
      ##### ON a.actor_id = f.actor_id;
    #### Dica:
      ##### Se a query for composta de poucas linhas, utilize apenas a primeira letra ou a primeira sílaba para representar a coluna.
      ##### Ex.: actor -> "A" ou "act"
      ##### Caso a query tenha várias linhas, é recomendado utilizar nomes mais descritivos para facilitar a leitura e interpretação.

  ### LEFT JOIN
    O foco está na tabela da esquerda. Serão retornados todos os registros da tabela da esquerda e os valores correspondentes da direita, caso existam. Valores sem correspondência são exibidos como nulos.

  ### RIGHT JOIN
    O foco está na tabela da esquerda. Serão retornados todos os registros da tabela da direita e os valores correspondentes da esquerda, caso existam. Valores sem correspondência são exibidos como nulos.

  ### SELF JOIN
    Faz pesquisas e comparações dentro da própria tabela. Você pode utilizar qualquer dos tipos de JOIN ao usar o SELF JOIN.