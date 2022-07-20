/**
 * O Promise.all é um método da Promise que nos permite
 * passar um array de Promises e receber de volta uma única Promise.
 * Esse método também nos permite utilizar um único catch,
 * que será chamado caso qualquer uma das Promises seja rejeitada.
 */

 const fs = require('fs').promises;

 Promise.all([
   fs.readFile('file1.txt'),
   fs.readFile('file2.txt'),
   fs.readFile('file3.txt'),
 ])
   .then(([file1, file2, file3]) => {
     const fileSizeSum = file1.byteLength + file2.byteLength + file3.byteLength;
     console.log(`Lidos 3 arquivos totalizando ${fileSizeSum} bytes`);
   })
   .catch((err) => {
     console.error(`Erro ao ler arquivos: ${err.message}`);
   });
   
// Irá retornar erro, pois os arquivos não existem.