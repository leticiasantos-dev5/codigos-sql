-- Cria o banco de dados se ele não existir
CREATE DATABASE IF NOT EXISTS cadastro
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

-- Usa o banco de dados "cadastro"
USE cadastro;

-- Cria a tabela "pessoas" com a restrição UNIQUE
CREATE TABLE `pessoas` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) UNIQUE NOT NULL, -- Garante que o nome seja único e não nulo
    `nascimento` DATE,
    `sexo` ENUM('M', 'F'),
    `peso` DECIMAL(5,2),
    `altura` DECIMAL(3,2),
    `nacionalidade` VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4;

-- Insere os registros, sem duplicatas
INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Janaina', '1987-11-12', 'F', '75.4', '1.66', 'EUA'),
(DEFAULT, 'Pedro', '1999-12-3', 'M', '87', '2', 'Brasil'),
(DEFAULT, 'Claudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(DEFAULT, 'Adalgiza', '1930-11-2', 'F', '53.2', '1.75', 'Irlanda'),
(DEFAULT, 'Joana', '1980-06-08', 'F', '50.2', '1.65', 'Brasil'),
(DEFAULT, 'Maria', '1985-03-20', 'F', '65.5', '1.70', 'Portugal'),
(DEFAULT, 'Creusa', '1992-11-25', 'F', '72.8', '1.58', 'Brasil'),
(DEFAULT, 'Godofredo', '1975-09-10', 'M', '88.3', '1.85', 'Brasil');


-- Seleciona todos os registros para ver o resultado final correto (sem duplicatas)
SELECT * FROM pessoas;
