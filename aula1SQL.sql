-- criar um banco de dados
Create database db_quitanda;
-- seleciona o banco de dados que estará em uso
use db_quitanda;
-- CRIAR UMA TABELA NO MYSQL
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);
-- selecionar tudo da tabela tb_produtos
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(nome, quantidade, datavalidade,preco)
VALUES
("Abacaxi", 45,"2024-12-31",5.00);


INSERT INTO tb_produtos
(nome, quantidade, datavalidade,preco)
VALUES
("Acerola", 1000,"2024-12-31",5.50);
-- inserir uma linha de dados no banco
INSERT INTO tb_produtos
(nome, quantidade, datavalidade,preco)
VALUES
("Manga", 100,"2024-05-12",3.00);
-- 31/12/2024
-- inserir mais de uma linha de informações ao mesmo tempo
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Tomate", 100, "2023-12-15", 8.00),
("Maçã", 20, "2023-12-15", 5.00),
("Laranja", 50, "2023-12-15", 10.00),
("Banana", 200, "2023-12-15", 12.00),
("Uva", 1200, "2023-12-15", 30.00),
("Pêra", 500, "2023-12-15", 2.99);

SELECT nome,id FROM tb_produtos;
-- exibir as colunas nome com o apelido Nome/ id com o apelido Codigo e preco com o apelido Preço da tabela
SELECT (nome) as "Nome",
(id) as "Código",
(preco) as "Preço" 
FROM tb_produtos;
-- exibir / selecionar dados para retornar de uma tabela usando o id 2 como referencia 
SELECT * FROM tb_produtos WHERE id = 2;
-- =(igual) >(maior) <(menor)  >=(maior ou igual) <=(menor ou igual)

-- exibir informações onde a quantidade for maior que 50
SELECT * FROM tb_produtos WHERE quantidade > 50;

-- exibir informações onde a quantidade for maior ou igual a 50
SELECT * FROM tb_produtos WHERE quantidade >= 50;

SELECT * FROM tb_produtos WHERE nome = "Laranja";

SELECT * FROM tb_produtos WHERE nome LIKE "l%";

SELECT * FROM tb_produtos WHERE nome LIKE "%a";

SELECT * FROM tb_produtos WHERE nome LIKE "%a" 
AND quantidade > 50;

SELECT * FROM tb_produtos WHERE nome LIKE "%a" 
OR quantidade > 50;

SELECT * FROM tb_produtos WHERE nome LIKE "%v%";

SELECT * FROM tb_produtos order by id asc;

SELECT * FROM tb_produtos ORDER BY nome ASC;


-- alterar estrutura do banco de dados ou tabela **cuidado quando estiver utilizando um banco de dados de cliente real**
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_produtos ADD descricao VARCHAR(255); 

-- alteração dos dados 
UPDATE tb_produtos SET preco = 2.99 WHERE id = 8;
-- valor anterior do preco era 3.00

UPDATE tb_produtos SET descricao = "doce" 
WHERE id = 1;

UPDATE tb_produtos SET descricao = "doce";
SET SQL_SAFE_UPDATES = 1;

-- remover uma coluna da tabela
ALTER TABLE tb_produtos DROP descricao;


-- deletar informações da tabela
DELETE FROM tb_produtos WHERE id >= 11;

DELETE FROM tb_produtos WHERE nome LIKE "abacaxi" and id <> 1;

