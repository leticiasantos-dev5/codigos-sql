# Este script apaga a tabela, recria, insere todos os dados e depois faz a modificação.
# Isso garante que a modificação funcione, independentemente do estado anterior da tabela.

# 1. Apaga a tabela 'cursos' se ela já existir.
DROP TABLE IF EXISTS cursos;

# 2. Cria a tabela novamente, do zero, com a chave primária na coluna `id_curso`.
CREATE TABLE cursos (
    id_curso VARCHAR(10),
    nome VARCHAR(30),
    descricao VARCHAR(100),
    carga_horaria INT,
    total_aulas INT,
    ano YEAR,
    PRIMARY KEY (id_curso)
);

# 3. Insere todos os dados, exatamente como você forneceu originalmente.
INSERT INTO cursos (id_curso, nome, descricao, carga_horaria, total_aulas, ano) VALUES
('1','HTML4','Cursos de HTML5',40,37,2014),
('2','Algortimos','Lógica de Programação',20,15,2014),
('3','Photoshop','Dicas de Photoshop CC',10,8,2014),
('4','PGP','Curso de PHP para iniciantes',40,20,2010),
('5','Jarva','Introdução a linguagem Java',10,29,2000),
('6','MySQL','Banco de Dados MySQL',30,15,2016),
('7','Word','Curso completo de Word',40,30,2016),
('8','Sapateado','Danças Rítmicas',40,30,2018),
('9','Cozinha Árabe','Aprenda a fazer Kibe',40,30,2018),
('10','Youtuber','Gerar polêmica e ganhar inscritos',5,2,2018);

# 4. Modifica a linha com a correção do nome.
# A coluna `id_curso` agora é uma chave primária, o que permite a modificação.
UPDATE cursos
SET nome = 'HTML5'
WHERE id_curso = '1';

# 5. Mostra todos os dados da tabela para confirmar que a linha foi modificada.
SELECT * FROM cursos;

# modificações
UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE id_curso = '4';

UPDATE cursos
SET nome = 'Java', carga_horaria = '40', ano = '2015'
WHERE id_curso = '5';

# usar o limit 1 pq é muito importante para não mudar varais linhas ao mesmo tempo
#isso pode acabar com um banco de dados

# essas linhas vão ensinar a como apagar uma só determinada linha ex linha 8
delete from cursos
where id_curso = '8';

select * from cursos;

delete from cursos
where ano = '2018'
limit 2; #quandidade de linhas que tenham ano 2018 quero a apagar ele limita
select * from cursos;