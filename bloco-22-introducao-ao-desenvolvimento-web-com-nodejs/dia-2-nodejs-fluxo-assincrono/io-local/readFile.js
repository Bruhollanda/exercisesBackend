/* const fs = require('fs');

const nomeDoArquivo = 'meu-arquivo.txt';

fs.readFile(nomeDoArquivo, 'utf8', (err, data) => {
  /*
    Ele recebe três parâmetros:
      - O nome do arquivo;
      - Um parâmetro opcional que, quando é uma string,
      define o encoding que será utilizado durante a leitura do arquivo;
      - Uma callback que permite receber e manipular os dados lidos do arquivo.
   
  if (err) {
    console.error(`Não foi possível ler o arquivo ${nomeDoArquivo}\n Erro: ${err}`);
    process.exit(1);
  }
  console.log(`Conteúdo do arquivo: ${data}`);
});
*/

/* O módulo fs possui um segundo modelo de API que,
  em vez de trabalhar com callbacks, retorna Promises.
  Para utilizar a interface de Promises do fs, precisamos
  alterar a importação do módulo fs para ('fs').promises.
*/

const fs = require('fs').promises;

const nomeDoArquivo = 'meu-arquivo.txt';

fs.readFile(nomeDoArquivo, 'utf8')
  .then((data) => {
    console.log(`Conteúdo do arquivo: ${data}`);
  })
  .catch((err) => {
    console.error(`Não foi possível ler o arquivo ${nomeDoArquivo}\n Erro: ${err}`);
    process.exit(1);
    // Encerra a execução do script e informa ao sistema operacional que houve um erro com código
  });
