-- Criar tabela Usuários

CREATE TABLE Usuario (
    id SERIAL PRIMARY KEY,
    login VARCHAR(100),
    nome VARCHAR(100),
    senha VARCHAR(100)
);

-- Inserir categorias
INSERT INTO Usuario (login, nome, senha) VALUES 
('diogo.p.pereira@unesp.br', 'Diogo', 'jnhtry65g'),
('fsa.oliveira@unesp.br	', 'Felipe', '123456');

-- Criar tabela Categorias
CREATE TABLE Categorias (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

-- Inserir categorias
INSERT INTO Categorias (Nome) VALUES 
('Açougue'),
('Frios e laticínios'),
('Adega e bebidas'),
('Higiene e limpeza'),
('Hortifruti e mercearia'),
('Padaria'),
('Enlatados'),
('Cereais'),
('Rotisseria');

-- Criar tabela Itens
CREATE TABLE Itens (
    UPC_A BIGINT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Categoria INT,
    Marca VARCHAR(100),
    Uni_Grand VARCHAR(50),
    Num_Grand FLOAT,
    FOREIGN KEY (Categoria) REFERENCES Categorias(id)
);

-- Inserir 50 itens -- Carnes fixadas em 1kg -- 1000ml para 1l
INSERT INTO Itens (UPC_A, Nome, Categoria, Marca, Uni_Grand, Num_Grand) VALUES 
(012345678905, 'Carne bovina', 1, 'Fictícia Carnes', 'kg', 1),
(123456789012, 'Queijo muçarela', 2, 'Queijos do Vale', 'g', 500),
(234567890123, 'Vinho tinto', 3, 'Vinícola do Sul', 'ml', 750),
(345678901234, 'Sabonete líquido', 4, 'Limpo e Perfumado', 'ml', 250),
(456789012345, 'Maçã', 5, 'Frutas Saborosas', 'kg', 1),
(567890123456, 'Pão francês', 6, 'Panificadora Pão Quente', 'unidade', 1),
(678901234567, 'Sardinha em lata', 7, 'Conservas Del Mar', 'unidade', 1),
(789012345678, 'Arroz', 8, 'Cereal do Campo', 'kg', 1),
(890123456789, 'Frango assado', 9, 'Frangos do Sítio', 'kg', 1),
(901234567890, 'Leite integral', 2, 'Laticínios Felizes', 'l', 1),
(123123123123, 'Ovos', 5, 'Granja do Sol', 'unidade', 12),
(234234234234, 'Cerveja', 3, 'Cervejaria da Amizade', 'ml', 350),
(345345345345, 'Papel higiênico', 4, 'Limpeza Total', 'rolo', 4),
(456456456456, 'Macarrão', 8, 'Massa Leve', 'g', 500),
(567567567567, 'Desinfetante', 4, 'Cheiro Bom', 'ml', 750),
(678678678678, 'Banana', 5, 'Frutaria Tropical', 'kg', 1),
(789789789789, 'Pão de forma', 6, 'Padaria São João', 'unidade', 1),
(890890890890, 'Feijão', 8, 'Feijão Bom', 'kg', 1),
(901901901901, 'Café', 5, 'Café da Manhã', 'g', 500),
(112112112112, 'Tomate', 5, 'Hortifruti Express', 'kg', 1),
(223223223223, 'Refrigerante', 3, 'Refrescante', 'l', 2),
(334334334334, 'Biscoito recheado', 8, 'Biscoitos Felizes', 'g', 200),
(445445445445, 'Leite condensado', 2, 'Doces Sonhos', 'ml', 395),
(556556556556, 'Cereal matinal', 8, 'Manhã Saudável', 'g', 300),
(667667667667, 'Detergente', 4, 'Limpinho e Cheiroso', 'ml', 500),
(778778778778, 'Amaciante de roupas', 4, 'Tecido Macio', 'ml', 1500),
(889889889889, 'Atum em lata', 7, 'Peixe do Mar', 'g', 120),
(990990990990, 'Açúcar refinado', 8, 'Doce Sabor', 'kg', 1),
(111222333444, 'Salgadinho de milho', 8, 'Snacks Crocantes', 'g', 150),
(222333434555, 'Lombo suíno', 1, 'Carnes Deliciosas', 'kg', 1),
(333444525666, 'Iogurte natural', 2, 'Iogurteria', 'g', 150),
(444555626777, 'Cenoura', 5, 'Legumes Frescos', 'kg', 1),
(555666177888, 'Pão de queijo', 6, 'Casa de Pães', 'unidade', 10),
(666777818999, 'Milho em conserva', 7, 'Conservas da Roça', 'g', 200),
(777888999000, 'Biscoito de polvilho', 8, 'Biscoitos da Vovó', 'g', 250),
(888999000111, 'Salmão', 1, 'Peixaria do Mar', 'kg', 1),
(999000111222, 'Água mineral', 3, 'Água Pura', 'l', 1.5),
(000111222333, 'Sabão em pó', 4, 'Lavanderia Clean', 'kg', 2),
(111222333424, 'Pêssego em calda', 7, 'Doces do Sítio', 'g', 400),
(222333444555, 'Peito de peru fatiado', 2, 'Frios Delícia', 'g', 200),
(333444555666, 'Vodka', 3, 'Destilados do Leste', 'l', 1),
(444555666777, 'Abacaxi', 5, 'Frutas Tropicais', 'unidade', 1),
(555666777888, 'Azeite de oliva', 2, 'Oliveira Dourada', 'ml', 500),
(666777888999, 'Filé de peixe', 1, 'Peixaria Marítima', 'kg', 1),
(112233445566, 'Creme de leite', 2, 'Laticínios Felizes', 'ml', 1000),
(778899001122, 'Vinagre de maçã', 8, 'Vinagre Fino', 'ml', 750),
(990011223344, 'Suco de laranja natural', 5, 'Frutas Saborosas', 'ml', 1500),
(334455667788, 'Manteiga', 2, 'Manteiga do Campo', 'g', 200),
(556677889900, 'Queijo cheddar', 2, 'Queijos do Vale', 'g', 250),
(778899101122, 'Geleia de morango', 8, 'Doces da Vovó', 'g', 400);

-- Criar tabela Mercado
CREATE TABLE Mercado (
    CNPJ BIGINT PRIMARY KEY,
    ItensMercado TEXT,
    Nome VARCHAR(100) NOT NULL,
    Rua VARCHAR(100),
    CEP VARCHAR(20)
);

-- Inserir 5 mercados
INSERT INTO Mercado (CNPJ, ItensMercado, Nome, Rua, CEP) VALUES 
(12345678901234, '{"Itens": ["012345678905", "123456789012", "456789012345", "567890123456", "789012345678", "890123456789", "901234567890", "123123123123", "345345345345", "556556556556", "778778778778", "990990990990", "222333434555", "333444525666", "666777818999", "777888999000", "888999000111", "999000111222"]}', 'Mercado do João', 'Rua das Flores, 123', '12345-678'),
(23456789012345, '{"Itens": ["012345678905", "123456789012", "234567890123", "345678901234", "456789012345", "567890123456", "789012345678", "890123456789", "901234567890", "123123123123", "234234234234", "334334334334", "445445445445", "667667667667", "778778778778", "889889889889", "990990990990", "111222333444", "222333444555", "333444555666", "444555666777", "555666777888"]}', 'Supermercado da Maria', 'Avenida das Palmeiras, 456', '54321-987'),
(34567890123456, '{"Itens": ["012345678905", "234567890123", "345678901234", "456789012345", "567890123456", "789012345678", "890123456789", "901234567890", "112112112112", "223223223223", "334334334334", "445445445445", "556556556556", "667667667667", "778778778778", "889889889889", "990990990990", "111222333444", "222333444555", "333444555666", "444555666777", "555666777888", "666777888999", "777888999000", "888999000111", "999000111222"]}', 'Mercadinho da Ana', 'Rua das Oliveiras, 789', '98765-432'),
(45678901234567, '{"Itens": ["123123123123", "234234234234", "345345345345", "456456456456", "567567567567", "678678678678", "789789789789", "890890890890", "901901901901", "112112112112", "223223223223", "334334334334", "445445445445", "556556556556", "667667667667", "778778778778", "889889889889", "990990990990", "111222333444", "222333444555", "333444555666", "444555666777", "555666777888", "666777888999", "777888999000", "888999000111", "999000111222"]}', 'Mini Mercado do José', 'Rua dos Passarinhos, 101', '54321-678'),
(56789012345678, '{"Itens": ["112233445566", "334455667788", "556677889900", "778899001122", "990011223344"]}', 'Supermercado da Daise', 'Rua das Orquídeas, 789', '98765-432');

-- Criar tabela Preço de Mercado
CREATE TABLE Preco_mercado (
    id SERIAL PRIMARY KEY,
    Item BIGINT,
    Mercado BIGINT,
    Preco FLOAT,
    FOREIGN KEY (Item) REFERENCES Itens(UPC_A),
    FOREIGN KEY (Mercado) REFERENCES Mercado(CNPJ)
);

INSERT INTO Preco_mercado (Item, Mercado, Preco) VALUES
(012345678905, 12345678901234, 52.00),
(123456789012, 12345678901234, 14.27),
(456789012345, 12345678901234, 3.10),
(567890123456, 12345678901234, 1.22),
(789012345678, 12345678901234, 8.50),
(890123456789, 12345678901234, 6.80),
(901234567890, 12345678901234, 3.99),
(123123123123, 12345678901234, 24.99),
(345345345345, 12345678901234, 2.75),
(556556556556, 12345678901234, 5.45),
(778778778778, 12345678901234, 12.60),
(990990990990, 12345678901234, 1.80),
(222333434555, 12345678901234, 35.90),
(666777818999, 12345678901234, 4.70),
(777888999000, 12345678901234, 9.25),
(888999000111, 12345678901234, 42.75),
(999000111222, 12345678901234, 0.95),
(012345678905, 23456789012345, 51.00),
(123456789012, 23456789012345, 13.92),
(234567890123, 23456789012345, 6.25),
(345678901234, 23456789012345, 2.15),
(456789012345, 23456789012345, 3.00),
(567890123456, 23456789012345, 1.32),
(789012345678, 23456789012345, 9.75),
(890123456789, 23456789012345, 7.60),
(901234567890, 23456789012345, 4.20),
(123123123123, 23456789012345, 21.99),
(234234234234, 23456789012345, 8.50),
(334334334334, 23456789012345, 3.80),
(445445445445, 23456789012345, 4.50),
(667667667667, 23456789012345, 5.25),
(778778778778, 23456789012345, 12.80),
(889889889889, 23456789012345, 3.75),
(990990990990, 23456789012345, 1.90),
(111222333444, 23456789012345, 14.50),
(222333444555, 23456789012345, 28.75),
(333444555666, 23456789012345, 3.99),
(444555666777, 23456789012345, 9.80),
(555666777888, 23456789012345, 10.50),
(012345678905, 34567890123456, 49.50),
(234567890123, 34567890123456, 5.75),
(345678901234, 34567890123456, 1.99),
(456789012345, 34567890123456, 3.25),
(567890123456, 34567890123456, 1.55),
(789012345678, 34567890123456, 9.25),
(890123456789, 34567890123456, 7.10),
(901234567890, 34567890123456, 4.50),
(112112112112, 34567890123456, 14.25),
(223223223223, 34567890123456, 27.99),
(334334334334, 34567890123456, 3.75),
(445445445445, 34567890123456, 9.50),
(556556556556, 34567890123456, 10.25),
(667667667667, 34567890123456, 5.50),
(778778778778, 34567890123456, 12.50),
(889889889889, 34567890123456, 3.99),
(990990990990, 34567890123456, 1.75),
(111222333444, 34567890123456, 14.25),
(222333444555, 34567890123456, 27.99),
(333444555666, 34567890123456, 3.75),
(444555666777, 34567890123456, 9.50),
(555666777888, 34567890123456, 10.25),
(666777888999, 34567890123456, 9.75),
(777888999000, 34567890123456, 20.25),
(888999000111, 34567890123456, 40.25),
(999000111222, 34567890123456, 6.25),
(123123123123, 45678901234567, 18.75),
(234234234234, 45678901234567, 7.99),
(345345345345, 45678901234567, 2.50),
(456456456456, 45678901234567, 6.25),
(567567567567, 45678901234567, 3.55),
(678678678678, 45678901234567, 1.85),
(789789789789, 45678901234567, 12.50),
(890890890890, 45678901234567, 9.75),
(901901901901, 45678901234567, 5.99),
(112112112112, 45678901234567, 17.50),
(223223223223, 45678901234567, 28.99),
(334334334334, 45678901234567, 4.75),
(445445445445, 45678901234567, 9.99),
(556556556556, 45678901234567, 11.25),
(667667667667, 45678901234567, 6.50),
(778778778778, 45678901234567, 14.50),
(889889889889, 45678901234567, 4.99),
(990990990990, 45678901234567, 2.75),
(111222333444, 45678901234567, 15.25),
(222333444555, 45678901234567, 28.99),
(333444555666, 45678901234567, 4.75),
(444555666777, 45678901234567, 9.99),
(555666777888, 45678901234567, 11.25),
(666777888999, 45678901234567, 9.75),
(777888999000, 45678901234567, 20.25),
(888999000111, 45678901234567, 40.25),
(999000111222, 45678901234567, 6.25),
(112233445566, 56789012345678, 2.99),
(334455667788, 56789012345678, 5.25),
(556677889900, 56789012345678, 4.50),
(778899001122, 56789012345678, 6.75),
(990011223344, 56789012345678, 3.25);
