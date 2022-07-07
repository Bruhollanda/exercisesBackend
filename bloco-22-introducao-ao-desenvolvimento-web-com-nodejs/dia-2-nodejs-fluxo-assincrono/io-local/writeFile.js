const fs = require('fs').promises;

fs.writeFile('./meu-arquivo.txt', 'Meu textão', { flag: 'wx' } /* abre o arquivo para escrita **apenas** caso ele não exista. */)
  /*
    Recebe como parâmetro o arquivo a ser editado
    e o texto que será colocado no arquivo
    Substitui qualquer informação que havia no arquivo anteriormente.
  */
  .then(() => {
    console.log('Arquivo escrito com sucesso!');
  })
  .catch((err) => {
    console.error(`Erro ao escrever o arquivo: ${err.message}`);
  });
