CREATE DATABASE Escola;
CREATE TABLE IF NOT EXISTS Escola.Estudantes (
    nome VARCHAR(7) CHARACTER SET utf8,
    idade INT
);
INSERT INTO Escola.Estudantes VALUES
    ('Rafael', 25),
    ('Amanda', 30),
    ('Roberto', 45),
    ('Carol', 19),
    ('Amanda', 25);

/*
Monte uma query para encontrar pares únicos de nomes e idades.
*/

SELECT DISTINCT nome, idade FROM Escola.Estudantes;

/*
Monte uma query para encontrar somente os nomes únicos.
*/

SELECT DISTINCT nome FROM Escola.Estudantes;

/*
Monte uma query para encontrar somente as idades únicas.
*/

SELECT DISTINCT idade FROM Escola.Estudantes;
