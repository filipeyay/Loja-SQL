-- script dois
USE Loja;
INSERT INTO Usuario
    (login, senha)
VALUES('op1', 'op1'),
    ('op2', 'op2'),
    ('op3', 'op3'),
    ('op4', 'op4');

INSERT INTO Produto
    (idProduto, nome, quantidade, valorVenda)
VALUES('1', 'banana', '100', '5.00'),
    ('3', 'laranja', '500', '2.00'),
    ('4', 'manga', '800', '4.00');

INSERT INTO Pessoa
    (idPessoa, nome, logradouro, cidade, estado, telefone, email)
VALUES
    (NEXT VALUE FOR sequenciaPessoaID, 'Ian', 'Rua A, 1', 'Resende', 'RJ', '1111-1111', 'ian@gmail.com'),
    (NEXT VALUE FOR sequenciaPessoaID, 'Sofia', 'Rua B, 2', 'Araguari', 'MG', '2222-2222', 'sofia@gmail.com'),
    (NEXT VALUE FOR sequenciaPessoaID, 'Alan', 'Rua C, 3', 'Porto Alegre', 'RS', '3333-3333', 'alan@gmail.com'),
    (NEXT VALUE FOR sequenciaPessoaID, 'Empresa de Produtos', 'Avenida D, 4', 'Garanhuns', 'PE', '4444-4444', 'empresaproduto@gmail.com'),
    (NEXT VALUE FOR sequenciaPessoaID, 'Empresa de Madeira', 'Avenida E, 5', 'Brasilia', 'DF', '5555-5555', 'empresamadeira@gmail.com');

INSERT INTO PessoaFisica
    (idPessoa, CPF)
VALUES(1, '11111111111'),
    (2, '22222222222'),
    (3, '33333333333');

INSERT INTO PessoaJuridica
    (idPessoa, CNPJ)
VALUES(4, '44444444444'),
    (5, '55555555555');

INSERT INTO Movimento
    (idMovimento, idUsuario, idPessoa, idProduto, quantidade, tipo, valorUnitario)
VALUES(1, 1, 5, 1, 4, 'E', 5.00),
    (3, 2, 3, 3, 2, 'S', 2.00),
    (5, 1, 4, 4, 60, 'E', 4.00),
    (6, 2, 1, 1, 15, 'S', 5.00),
    (7, 4, 2, 4, 25, 'S', 4.00),
    (9, 3, 5, 3, 50, 'E', 2.00);