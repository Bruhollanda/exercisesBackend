// index.js

const express = require('express');

const Author = require('./models/Author');
const Books = require('./models/Books');

const app = express();

app.get('/authors', async (_req, res) => {
	const authors = await Author.getAll();

	res.status(200).json(authors);
});

app.get('/books', async (req, res) => {
  const { author_id } = req.query; // desestruturando da query

	const books = (author_id)
  ? await Books.getAuthorId(author_id) // se o id foi informado, manda o retorno da função getAuthorId
  : await Books.getAll(); // senão retorna todos com a função getAll

	res.status(200).json(books);
});

app.get('/authors/:id', async (req, res) => {
	const { id } = req.params;

	const author = await Author.findById(id);

	if (!author) return res.status(404).json({ message: 'Not found' });

	res.status(200).json(author);
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
	console.log(`Ouvindo a porta ${PORT}`);
});
