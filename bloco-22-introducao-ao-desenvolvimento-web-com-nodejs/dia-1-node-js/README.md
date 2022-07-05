# Exportando Módulos:

Utilizamos a variável global `module.exports`, atribuindo a ela o valor que desejamos exportar. Ex.:

    // export.js
    const functionExport = "Dado exportado";
    module.exports = functionExport;

# Importando Módulos:


### Módulos locais:

    // meuModulo/funcionalidade-1.js

    module.exports = function () {
      console.log('funcionalidade1');
    }

    ---------------------------------

    // meuModulo/funcionalidade-2.js

    module.exports = function () {
      console.log('funcionalidade2');
    }

    ---------------------------------

    // meuModulo/index.js
    const funcionalidade1 = require('./funcionalidade-1');
    const funcionalidade2 = require('./funcionalidade-2');

    module.exports = { funcionalidade1, funcionalidade2 };

    ---------------------------------

    // minha-aplicacao/index.js
    const meuModulo = require('./meuModulo');

    console.log(meuModulo);
    /* { funcionalidade1: [Function: funcionalidade1],
        funcionalidade2: [Function: funcionalidade2] } */

    meuModulo.funcionalidade1();

    /* meuModulo foi importado passando o caminho do diretório para a função require. */


### Módulos internos:

Deve-se passar o nome do pacote como parâmetro para a função `require`. Ex.: 

    const fs = require('fs');

    fs.readFileSync('./meuArquivo.txt');


### Módulos de Terceiros:

Importados da mesma forma que módulos internos, porém, deve-se fazer a instalação na pasta dos projetos em que queremos utiliza-los.

# NPM

Sigla para Node Package Manager. Repositório oficial para publicação de pacotes Node.js.

### Utilizando CLI do npm 

Ferramenta que auxilia no gerenciamento de pacotes. É através dele que criamos um projeto, instalamos e removemos pacotes, publicamos e gerenciamos versões dos nossos próprios pacotes. 

#### npm init 
  Permite criar de forma rápida e simplificada um novo pacote Node.js na pasta onde é executado.

#### npm run
  Faz com que o npm execute um determinado script configurado no package.json. 

#### npm start
   Age como um "atalho" para o comando npm run start, uma vez que sua função é executar o script start definido no package.json.

#### npm install
  É o responsável por baixar e instalar pacotes Node.js do NPM para o nosso pacote.
  
  `npm install <nome do pacote>:` baixa o pacote do registro do NPM e o adiciona ao objeto dependencies do package.json;

  `npm install -D <nome do pacote>:` baixa o pacote do registro do NPM, porém o adiciona ao objeto devDependencies do package.json, indicando que o pacote em questão não é necessário para executar a aplicação.

  `npm install:` baixa e instala todos os pacotes listados nos objetos de dependencies e devDependencies do package.json. Sempre deve ser executado ao clonar o repositório de um pacote para garantir que todas as dependências desse pacote estão instaladas.