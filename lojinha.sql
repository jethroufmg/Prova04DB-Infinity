CREATE DATABASE lojinha;

CREATE TABLE lojinha.produtos (
	CodProduto VARCHAR(10) UNIQUE NOT NULL,
    NomeProduto VARCHAR(55) NOT NULL,
    UndComercial VARCHAR(5) NOT NULL,
    PrecoUnit FLOAT NOT NULL,
    DescProduto VARCHAR(180) NOT NULL,
    CodCategoria INT NOT NULL,
    primary key (CodProduto),
    foreign key (CodCategoria) REFERENCES categorias (CodCategoria)
    );


CREATE TABLE lojinha.categorias (
	CodCategoria INT auto_increment,
    CatNome VARCHAR (35)  UNIQUE NOT NULL,
    primary key (CodCategoria)
    );

CREATE TABLE lojinha.usuarios (
	UserEmail VARCHAR (50) NOT NULL UNIQUE CHECK (UserEmail LIKE "%@%.com%"),
    UserNome VARCHAR (50) NOT NULL,
    primary key (UserEmail)
    );

INSERT INTO lojinha.categorias 
	(CatNome) VALUES 
    ('Alvenaria'),
	('Equipamentos e eletro-eletrônicos'),
	('Ferramentas'),
	('Materiais de uso geral'),
	('Materiais Elétricos'),
	('Materiais Hidráulicos'),
	('Materias de pintura');
    
    
INSERT INTO lojinha.usuarios 
	(UserEmail, UserNome) VALUES 
    ('ANAC@gmail.com' , 'ANA CARLA JESUS DOS SANTOS '),
	('CONSE@gmail.com' , 'CONSEP  CONSULTORIA ENGENHARIA E PROJETOS LTDA'),
	('DORSU@gmail.com' , 'DORSUM TRANSPORTE E LOGISTICA EIRELI'),
	('ELTON@gmail.com' , 'ELTON DE CARVALHO LIMA'),
	('JEDIA@gmail.com' , 'JEDIAEL BRITO DE SOUZA ME'),
	('jetteixeira35@gmail.com' , 'COSME DO NASCIMENTO TEIXEIRA'),
	('JORGE@gmail.com' , 'JORGE MANCHUR & CIA LTDA'),
	('juadlon@gmail.com' , 'JUADILON SANTOS DE OLIVEIRA'),
	('LIGUE@gmail.com' , 'LIGUETUR TRANSPORTE E TURSIMO LTDA ME'),
	('LINHA@gmail.com' , 'LINHARES LOCACOES LTDA ME'),
	('logistica@mmedeiros.com.br' , 'ANDRE LUIS SANTOS DE OLIVEIRA'),
	('ademario@mmedeiros.com.br' , 'ADEMARIO MARTINS DA SILVA'),
	('MJES@gmail.com' , 'M JESUS DA SILVA TRANSPORTES  LTDA'),
	('OPCAO@gmail.com' , 'OPCAO TRANSPORTE E LOGISTICA LTDA  '),
	('saraivamatos@gmail.com' , 'JOSE LUCIANO SARAIVA MATOS');
    
    INSERT INTO lojinha.produtos
    (CodProduto, NomeProduto, UndComercial, PrecoUnit, DescProduto, CodCategoria) VALUES
    ('25232910', 'CIMENTO NACIONAL CPII F 32 RS 50KG', 'UN', 29, 'Cimento comum', 1),
	('25232990', 'CIMENTO MONTES CLAROS CPII Z 32 50KG', 'UN', 31.5, 'Cimento comum', 1),
	('84151011', 'COND LG HW DUAL VOICE 12K 220/1 F INV', 'UN', 1406.05, 'Aparelhos de ar condicionado', 2),
	('84151012', 'COND LG HW DUAL VOICE 9K 220/1 F INV', 'UN', 1258.72, 'Aparelhos de ar condicionado', 2),
	('84151013', 'EVAP LG HW DUAL VOICE 12K 220/1 F INV', 'UN', 757.2, 'Aparelhos de ar condicionado', 2),
	('84151014', 'EVAP LG HW DUAL VOICE 9K 220/1 F INV', 'UN', 677.78, 'Aparelhos de ar condicionado', 2),
	('82055900', 'ESPATULA ACO POL 2151- 5 TIGRE PINC', 'UN', 15.14, 'Ferramentas em aço inox', 3),
	('82029100', 'LAMINA SERRA FLEX UNIQUE STARRET', 'UN', 10.89, 'Laminas de serra para metais', 3),
	('35061090', 'ADESIVO ARALDITE HOBBY 23G TEKBOND', 'UN', 22.71, 'Colas para uso geral', 4),
	('48114110', 'FITA CREPE SANFONADA 24MMX50M', 'UN', 6.65, 'Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas', 4),
	('72123000', 'FITA ACO PERFURADA 17X0.4MM 10M VD VONDER', 'UN', 19.12, 'Fitas de aço galvanizado para suportação de tubos', 4),
	('85369090', 'CONECTOR 5P FLEX/RIG 0,14-4MM 32A WAGO', 'UN', 4.23, 'Conectores para emendas de cabos e fios elétricos', 5),
	('85381000', 'QUADRO DIST SLIM 48 DISJ TIGRE', 'UN', 345.11, 'Quadros, painéis, consoles, cabinas, armários e outros suportes, da posição 85.37, desprovidos dos seus aparelhos', 5),
	('85381001', 'QUADRO EMB SISTEMA VDI 30X30 TIGRE', 'UN', 187.38, 'Quadros, painéis, consoles, cabinas, armários e outros suportes, da posição 85.37, desprovidos dos seus aparelhos', 5),
	('35061091', 'ADESIVO AQUATHERM 175G C/ PINCEL TIGRE', 'UN', 49.07, 'cola para tubulação de pVC', 6),
	('39209990', 'FITA VEDAROSCA 18MMX25M TIGRE', 'UN', 6.83, 'Fitas para vedação de PVC', 6),
	('39251000', 'CAIXA DAGUA POLIET COMPL 1500L FORTLEV', 'UN', 899.1, 'Reservatórios, cisternas, cubas e recipientes análogos, de capacidade superior a 300 l', 6),
	('39172300', 'TUBO SOLD 32MM 6MTS TIGRE', 'UN', 57.71, 'Tubulação e conexões em PVC', 6),
	('39172301', 'TUBO AQUATHERM 28 TIGRE', 'UN', 84.06, 'Tubulação e conexões em PVC', 6),
	('39172302', 'ELETRODUTO FLEXIVEL CORR 25MM 50MTS FORTLEV', 'PC', 87.12, 'Tubulação e conexões em PVC', 6),
	('39172303', 'TUBO MULTCAMADA TIGREGAS RES 16MM TIGRE', 'MT', 8.87, 'Tubulação e conexões em PVC', 6),
	('39172304', 'TUBO ESG TP LEVE 300X3,5MM 6M TIGRE', 'UN', 875, 'Tubulação e conexões em PVC', 6),
	('39172305', 'TUBO ESG 100MM 6MTS TIGRE', 'UN', 71.91, 'Tubulação e conexões em PVC', 6),
	('39174090', 'JOELHO SOLD 45 32MM TIGRE', 'UN', 3.68, 'Tubulação e conexões em PVC', 6),
	('39174091', 'ADAPTADOR SOLD 32MMX1 CT TIGRE', 'UN', 1.75, 'Tubulação e conexões em PVC', 6),
	('39174092', 'LUVA SOLD 32MM TIGRE', 'UN', 1.85, 'Tubulação e conexões em PVC', 6),
	('39174093', 'CURVA SOLD 90 32MM TIGRE', 'UN', 6.26, 'Tubulação e conexões em PVC', 6),
	('39174094', 'ADAPTADOR FIXO FEMEA TIGREGAS RES 16-1/2 TIGRE', 'UN', 20.94, 'Tubulação e conexões em PVC', 6),
	('39174095', 'JOELHO ESG 90 100MM TIGRE', 'UN', 6.71, 'Tubulação e conexões em PVC', 6),
	('39174096', 'JOELHO ESG 90 75MM TIGRE', 'UN', 5.6, 'Tubulação e conexões em PVC', 6),
	('39174097', 'LUVA TRANS AQUATHERM 22MMX3/4 7068 TIGRE', 'UN', 11.32, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174098', 'JOELHO AQUATHERM 45 28MM TIGRE', 'UN', 6.78, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174099', 'JOELHO AQUATHERM 45 22MM 7041 TIGRE', 'UN', 4.75, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174100', 'LUVA TRANS AQUATHERM 28MMX1 TIGRE', 'UN', 20.98, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174101', 'JOELHO AQUATHERM 22MM 90 7050 TIGRE', 'UN', 4.11, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174102', 'UNIAO AQUATHERM 22 7086 TIGRE', 'UN', 13.13, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174103', 'UNIAO AQUATHERM 28 TIGRE', 'UN', 17.12, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174104', 'CURVA AQUATHERM 90 28MM TIGRE', 'UN', 11.9, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174105', 'JOELHO AQUATHERM 90 28MM 7051 TIGRE', 'UN', 8.52, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174106', 'LUVA AQUATHERM 28MM TIGRE', 'UN', 4.23, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174107', 'BUCHA RED AQUATHERM 28X22 7020 TIGRE', 'UN', 3.26, 'Tubulação e conexões em PVC patra água quente', 6),
	('39174108', 'TE AQUATHERM 90 28 7072 TIGRE', 'UN', 8.06, 'Tubulação e conexões em PVC patra água quente', 6),
	('84818095', 'VALVULA DE ESFERA 1 BT DECA', 'UN', 75.06, 'Válvulas tipo esfera', 6),
	('84818096', 'VALVULA DE ESFERA 3/4 BT DECA', 'UN', 55.17, 'Válvulas tipo esfera', 6),
	('84818093', 'BASE REG GAV 3/4 DECA', 'UN', 37.07, 'Válvulas tipo gaveta', 6),
	('32149000', 'ARGAMASSA AC3 FLEXIVEL 20KG QUARTZOLIT', 'UN', 38, 'Argamassas para assentamento de revestimentos cerâmicos', 7),
	('32149001', 'ARGAMASSA AC2 VARANDAS/QUINTAIS 20KG QUA', 'UN', 20, 'Argamassas para assentamento de revestimentos cerâmicos', 7),
	('32141020', 'MASSA CORRIDA 25KG LT CORAL', 'UN', 58.9, 'Indutos utilizados em pintura', 7),
	('68052000', 'LIXA MASSA 100 NORTON', 'UN', 0.95, 'Lixas para parede / madeira', 7),
	('68052001', 'LIXA MASSA 120 NORTON', 'UN', 0.95, 'Lixas para parede / madeira', 7),
	('68052002', 'LIXA MASSA 220 NORTON', 'UN', 0.95, 'Lixas para parede / madeira', 7),
	('32091010', 'TINTA FOS DIRETO NO GESSO 18L BR CORAL', 'UN', 217.53, 'Tintas', 7),
	('32091011', 'TINTA ACR FOS RENDE MTO BALD 20L BR NE CORAL', 'UN', 239.9, 'Tintas', 7);

CREATE TABLE lojinha.carrinho (
	UserEmail VARCHAR (50) NOT NULL CHECK (UserEmail LIKE "%@%.com%"),
    CodProduto VARCHAR(10) NOT NULL,
    QtdeProduto FLOAT NOT NULL
    );
    
INSERT INTO lojinha.carrinho 
	(UserEmail, CodProduto, QtdeProduto) VALUES
    ('ELTON@gmail.com', '25232910', 10),
	('ELTON@gmail.com', '82055900', 1),
	('ELTON@gmail.com', '85381001', 1),
	('ELTON@gmail.com', '35061090', 3),
	('juadlon@gmail.com', '39209990', 2),
	('juadlon@gmail.com', '32149001', 5),
	('juadlon@gmail.com', '32091010', 1),
	('ademario@mmedeiros.com.br', '85381000', 3),
	('ademario@mmedeiros.com.br', '85381001', 1);
    
CREATE VIEW lojinha.Pedido AS
	SELECT p.NomeProduto, p.DescProduto, c.CatNome FROM lojinha.produtos p
    INNER JOIN lojinha.categorias c on p.CodCategoria = c.CodCategoria;

DROP VIEW lojinha.Pedido;

CREATE VIEW lojinha.Pedido AS
	SELECT car.UserEmail AS 'LOGIN', u.UserNome AS 'COMPRADOR', p.NomeProduto AS 'PRODUTO', p.DescProduto AS 'DESCRIÇÃO DO PRODUTO', c.CatNome AS 'CATEGORIA DO PRODUTO', car.QtdeProduto AS 'QTD EDO PEDIDO' FROM lojinha.carrinho car
    INNER JOIN lojinha.usuarios u on car.UserEmail = u.UserEmail
    INNER JOIN lojinha.produtos p on car.CodProduto = p.CodProduto
    INNER JOIN lojinha.categorias c on p.CodCategoria = c.CodCategoria
    WHERE car.UserEmail = 'ELTON@gmail.com';

CREATE VIEW lojinha.Pedido2 AS
	SELECT car.UserEmail AS 'LOGIN', u.UserNome AS 'COMPRADOR', p.NomeProduto AS 'PRODUTO', p.DescProduto AS 'DESCRIÇÃO DO PRODUTO', c.CatNome AS 'CATEGORIA DO PRODUTO', car.QtdeProduto AS 'QTD EDO PEDIDO' FROM lojinha.carrinho car
    INNER JOIN lojinha.usuarios u on car.UserEmail = u.UserEmail
    INNER JOIN lojinha.produtos p on car.CodProduto = p.CodProduto
    INNER JOIN lojinha.categorias c on p.CodCategoria = c.CodCategoria
    WHERE car.UserEmail = 'juadlon@gmail.com';