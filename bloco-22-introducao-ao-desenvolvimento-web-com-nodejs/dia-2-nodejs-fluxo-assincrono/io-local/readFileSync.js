const fs = require('fs');

const nomeDoArquivo = 'meu-arquivo.txt';

try {
  const data = fs.readFileSync(nomeDoArquivo, 'utf8');
  /*
    O método readFileSync é responsável por ler arquivos
    e trazer seu conteúdo para dentro do Node.js.
    Por ser síncrono, ele espera a leitura do arquivo terminar
    para, só então, atribuir o resultado à constante data. 
   */
  console.log(data);
} catch (err) {
  console.error(`Erro ao ler o arquivo: ${err.path}`);
  console.log(err);
}

// Irá gerar um erro pois o arquivo não existe