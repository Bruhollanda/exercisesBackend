const fs = require('fs');

fs.readFile('./arquivo.txt', (err, content) => {
  /* A função recebe dois parâmetros:
    err -> erro que possa ter ocorrido durante a leitura do arquivo;
      Caso nenhum erro tenha ocorrido, irá retornar undefined.
    content -> o conteúdo do arquivo, que está em forma de uma sequência de bytes;
      Caso ocorra um erro na leitura do arquivo, esse parâmetro será undefined.
  */
  if (err) {
    console.error(`Erro ao ler o arquivo: ${err.message}`);
    return;
  }

  console.log(`Arquivo lido com sucesso. Conteúdo: ${content.toString('utf8')}`);
});

/* Formatos de Callback que recebem dois parâmentros: erros e resultado,
  assim como vimos no exemplo acima, são chamados de node-style callbacks
  e são, por convenção, a melhor maneira de se estruturar uma callback.
 */
