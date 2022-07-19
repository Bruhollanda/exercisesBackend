const express = require('express');

const app = express(); // 1

app.get('/hello', handleHelloWorldRequest); // 2

app.listen(3000, () => {
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


const recipes = [
  { id: 1, name: 'Lasanha', price: 40.0, waitTime: 30 },
  { id: 2, name: 'Macarrão a Bolonhesa', price: 35.0, waitTime: 25 },
  { id: 3, name: 'Macarrão com molho branco', price: 35.0, waitTime: 25 },
];

app.get('/recipes', function (req, res) {
  res.json(recipes); // ao invés de utilizar o método .send, você vai utilizar o método .json
  /**O método .send é um método que consegue retornar a resposta de uma requisição de uma forma
   * genérica, adaptando o tipo do retorno ao que será retornado. Mas, para deixar mais evidente
   * que o que vai ser devolvido é um JSON, utilize o método .json. */
});

app.listen(3001, () => {
  console.log('Aplicação ouvindo na porta 3001');
});