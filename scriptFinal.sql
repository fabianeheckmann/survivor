create database survivor;
drop database survivor;
use survivor;

CREATE TABLE IF NOT EXISTS ong (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  cidade VARCHAR(45),
  estado VARCHAR(45),
  PRIMARY KEY (`id`));
  
  
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


