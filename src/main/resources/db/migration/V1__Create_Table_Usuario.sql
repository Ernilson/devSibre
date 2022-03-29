DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `login` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`login`)
);

-- TABELA USUARIO                                                                  -- sibre2020
insert into usuario (login,email,senha)values('admin','admin@sibre','$2a$10$0YWMMxOtZFwc1NlflrGDXuESaxO2EFRn5Dr5y/IJpP7FcVtmhOeqS');
                                                                                -- santidade777
insert into usuario (login,email,senha)values('visitante','visitante@sibre','$2a$10$.9HNDP./LlxbsABKFO2cne9pZ6nAEgVqJfyUFQYPcTx1TnDlterYa');
																				-- integro01
insert into usuario (login,email,senha)values('usuario2','usuario2@sibre','$2a$10$8aM3TWao8vPNyiBFeD/xxuKAydkdC6RJ97VHMIPtNWeTAjfX83Ise');



CREATE TABLE IF NOT EXISTS `usuarios_roles` (
  `usuario_id` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  KEY `FKefntoswg8cckktsk0ha1wpm0i` (`role_id`),
  KEY `FKebiaxjbamgu326glxo1fbysuh` (`usuario_id`)
);

-- TABELA USUARIOS_ROLES
insert into usuarios_roles(usuario_id, role_id)values('admin','ROLE_ADMIN');
insert into usuarios_roles(usuario_id, role_id)values('visitante','ROLE_USER');

CREATE TABLE IF NOT EXISTS `role` (
  `nome_role` varchar(255) NOT NULL,
  PRIMARY KEY (`nome_role`)
);

-- TABELA ROLE
insert into role(nome_role)values('ROLE_ADMIN');
insert into role(nome_role)values('ROLE_USER');