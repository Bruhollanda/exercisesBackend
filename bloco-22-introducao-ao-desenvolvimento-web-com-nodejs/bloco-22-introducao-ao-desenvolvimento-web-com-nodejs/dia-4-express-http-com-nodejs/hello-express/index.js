const express = require('express');

const app = express(); // 1

app.get('/hello', handleHelloWorldRequest); // 2

app.listen(3001, () => {
  console.log('Aplicação ouvindo na porta 3001');
}); // 3

function handleHelloWorldRequest(_req, res) { // req não utilizado nessa função
  res.status(200).send('Hello, World!'); // 4
}

// nodemon instalado
/** Permite que a aplicação seja executada novamente
 * toda vez em que haja alterações no arquivo.
 * Utilizando o parametro -D para indicar que o
 * pacote deve ser instalado como uma dependencia
 * de desenvolvimento.
 */