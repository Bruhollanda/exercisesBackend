// buscar o resultado sem necessariamente usar uma API de Promises

/**
 * Toda função na qual utilizamos async,
 * automaticamente passa a retornar uma Promise,
 * que será rejeitada em caso de erro, e resolvida em caso de sucesso.
 */
const fs = require('fs').promises;

async function main() {
  try {
    await fs.writeFile('./meu-arquivo.txt', 'Meu textão');
    console.log('Arquivo escrito com sucesso!');
  } catch (err) {
    console.error(`Erro ao escrever o arquivo: ${err.message}`);
  }
}

main();
