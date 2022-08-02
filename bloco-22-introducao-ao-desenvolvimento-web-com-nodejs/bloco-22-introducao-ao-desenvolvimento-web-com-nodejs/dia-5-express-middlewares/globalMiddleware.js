/** Quando precisamos reaproveitar um middleware
 * para todas as rotas da nossa aplicação (ou uma boa parte destas),
 * criamos middlewares globais
 */

/** Aqui, vamos criar uma forma de autenticar se um determinado
 * usuário pode ter acesso à nossa API de receitas. Para isso,
 * será necessário enviar as informações de nome de usuário e
 * senha pelo Header da requisição.
 */

const validUser = {
  username: 'MestreCuca',
  password: 'MinhaSenhaSuperSeguraSqn'
};

const authMiddleware = (req, res, next) => {
  const { username, password } = req.headers;

  if (!username || !password) {
    return res.status(401).json({ message: 'Username or password can`t be blank!' });
  }

  if (username !== validUser.username || password !== validUser.password) {
    return res.status(401).json({ message: 'Invalid credentials!' });
  }

  next();
};

module.exports = authMiddleware;
