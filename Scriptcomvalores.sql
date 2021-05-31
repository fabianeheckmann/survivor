create database survivor;
drop database survivor;
use survivor;

drop table usuario_ong;
drop table usuario;
drop table ong;
CREATE TABLE IF NOT EXISTS ong (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  texto text,
  link varchar (45),
  cidade VARCHAR(45),
  estado VARCHAR(45),
  PRIMARY KEY (`id`));
  
  insert into ong values 
  (null, 'ongTeste', 'itanhaem', 'são paulo');
  
  insert into ong values 
  (null, 'CESTA - Centro de Estudos Ameríndios', 'O Centro de Estudos Ameríndios (CEstA) é um Núcleo de Apoio à Pesquisa (NAP), vinculado à Pró-Reitoria de Pesquisa da Universidade de São Paulo. Tem como objetivo produzir, aprofundar, sistematizar e divulgar conhecimentos sobre os povos indígenas das Américas. Sua equipe é composta por pesquisadores de diferentes áreas, contando com especialistas reconhecidos no Brasil e no exterior, vinculados à Faculdade de Filosofia, Letras e Ciências Humanas (Departamentos de Antropologia e História), Museu de Arqueologia e Etnologia, Instituto de Estudos Brasileiros e Instituto de Matemática e Estatística (Departamento de Ciência da Computação).
Mais informações:','http://www.usp.br/cesta/', 'sao_paulo', 'SP');


  
  
  CREATE TABLE IF NOT EXISTS usuario(
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  login VARCHAR(45),
  senha VARCHAR(45),
  cidade VARCHAR(45),
  estado VARCHAR(45),
  PRIMARY KEY (id));
  
  CREATE TABLE IF NOT EXISTS usuario_ong (
   fkUsuario int, 
   foreign key (fkUsuario) references usuario(id),
   fkOng int,
   foreign key (fkOng) references ong(id)
  );
select * from usuario;
