# NODE JS

## O que é?
&nbsp;&nbsp;&nbsp;`Interpretador de JS` baseado na ferramenta V8 do Chrome. Possui métodos para o acesso mais direto a sistemas de arquivos e rede.

## Por que utilizar?
&nbsp;&nbsp;&nbsp;Permite escrever softwares servidores de requisições HTTP de forma muito mais eficiente. Quando o servidor recebe uma requisição e precisa, por exemplo, buscar dados no banco, as demais requisições não precisão esperar a primeira terminar para que possam ser atendidas. Ou seja, ele trabalha de forma assíncrona.

&nbsp;&nbsp;&nbsp;As aplicações feitas em Node.js consomem menos recursos dos servidores que as executam, o tornando uma tecnologia mais barata que as demais.

&nbsp;&nbsp;&nbsp;Sendo assim, uma das principais vantagens do Node.js é a performance.

&nbsp;&nbsp;&nbsp;Facilita execução de aplicações em tempo real.

&nbsp;&nbsp;&nbsp;Bibliotecas como o socket.io permitem que essas aplicações relativamente complexas sejam criadas com mais facilidade.

## Módulo em Node.js:

&nbsp;&nbsp;&nbsp;Fração de um código que pode ser organizado em um ou mais arquivos e que possui escopo próprio. Suas variáveis, funções, classes e afins só estão disponíveis nos arquivos que fazem parte daquele módulo. Ou seja, é uma funcionalidade, ou um conjunto de funcionalidades, que se encontram isoladas do restante do código.

&nbsp;&nbsp;&nbsp;Existem 3 tipos de módulos: `internos`, `locais` e `de terceiros`.

### Módulo Interno(Core Modules):

&nbsp;&nbsp;&nbsp;Estão inclusos no Node.js e são instalados junto com ele quando baixamos o runtime.

&nbsp;&nbsp;&nbsp;Ex.:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [fs](https://nodejs.org/api/fs.html): fornece uma API para interagir com o sistema de arquivos de forma geral;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [url](https://nodejs.org/api/url.html): provê utilitários para ler e manipular URLs;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [querystring](https://nodejs.org/api/querystring.html): disponibiliza ferramentas para leitura e manipulação de parâmetros de URLs;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [util](https://nodejs.org/api/util.html) ferramentas e funcionalidades de utilidade geral;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [os](https://nodejs.org/api/os.html): ferramentas e funcionalidades voltadas para o sistema operacional.

### Módulos Locais:

&nbsp;&nbsp;&nbsp;Definidos junto à aplicação. Funcionalidades ou partes do programa que foram separados em arquivos diferentes. Podem ser publicados no NPM para que outras pessoas possam baixá-los e utilizá-los, tornando-os módulos de terceiros.

### Módulos de Terceiros:

&nbsp;&nbsp;&nbsp;Criados por outras pessoas e disponibilizados através do `npm`.


### Importar e exportar módulos:

### Sistemas de módulos:

#### `Módulos ES6:`

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ES6/ECMAScript6. Utiliza-se a chave `import` para importação e `export` para exportação.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; O Node.js não possui suporte a módulos ES6 por padrão. Sendo necessário utilização de transpiladores, como o [Babel](https://babeljs.io/), ou supersets da liguagem, como o [TypeScript](https://www.typescriptlang.org/).

###### `Transpiladores` são ferramentas que leem o código-fonte escrito em uma linguagem como o Node.js e produzem o código equivalente em outra linguagem.

###### `Supersets` são linguagens que utilizam um transpilador para adicionar novas funcionalidades ao JavaScript.

#### `Módulos CommonJS:`

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sistema de módulos implementado pelo Node.js nativamente.