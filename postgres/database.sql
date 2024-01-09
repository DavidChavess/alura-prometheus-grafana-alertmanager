CREATE TABLE usuario(id SERIAL NOT NULL,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	PRIMARY KEY (id));

CREATE TABLE perfil(id SERIAL NOT NULL,
	nome VARCHAR(255) NOT NULL,
	PRIMARY KEY (id));

CREATE TABLE usuario_perfis(usuario_id SERIAL NOT NULL,
	perfis_id SERIAL NOT NULL);

CREATE TABLE curso(id SERIAL NOT NULL,
	nome VARCHAR(255) NOT NULL,
  categoria VARCHAR(255) NOT NULL,
	PRIMARY KEY (id));

CREATE TABLE resposta(id SERIAL NOT NULL,
  autor_id SERIAL NOT NULL,
  topico_id SERIAL NOT NULL,
  mensagem VARCHAR(255) NOT NULL,
  solucao VARCHAR(255) NOT NULL,
  data_criacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id));

CREATE TABLE topico(id SERIAL NOT NULL,
	titulo VARCHAR(255) NOT NULL,
	mensagem VARCHAR(255) NOT NULL,
	data_criacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	status VARCHAR(255) NOT NULL,
	autor_id SERIAL NOT NULL,
	curso_id SERIAL NOT NULL,
  PRIMARY KEY (id));

INSERT INTO usuario(nome, email, senha) VALUES ('Aluno', 'aluno@email.com', '$2a$10$sFKmbxbG4ryhwPNx/l3pgOJSt.fW1z6YcUnuE2X8APA/Z3NI/oSpq');
INSERT INTO usuario(nome, email, senha) VALUES ('Moderador', 'moderador@email.com', '$2a$10$sFKmbxbG4ryhwPNx/l3pgOJSt.fW1z6YcUnuE2X8APA/Z3NI/oSpq');
INSERT INTO perfil(id, nome) VALUES (1, 'ROLE_ALUNO');
INSERT INTO perfil(id, nome) VALUES (2, 'ROLE_MODERADOR');
INSERT INTO usuario_perfis(usuario_id, perfis_id) VALUES (1, 1);
INSERT INTO usuario_perfis(usuario_id, perfis_id) VALUES (2, 2);
INSERT INTO curso(nome, categoria) VALUES ('Spring Boot', 'Programacao');
INSERT INTO curso(nome, categoria) VALUES ('HTML 5', 'Front-end');
INSERT INTO topico(titulo, mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Duvida 1', 'Erro ao criar projeto', '2019-05-05 18:00:00', 'NAO_RESPONDIDO', 1, 1);
INSERT INTO topico(titulo, mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Duvida 2', 'Projeto nao compila', '2019-05-05 19:00:00', 'NAO_RESPONDIDO', 1, 1);
INSERT INTO topico(titulo, mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Duvida 3', 'Tag HTML', '2019-05-05 20:00:00', 'NAO_RESPONDIDO', 1, 2);
