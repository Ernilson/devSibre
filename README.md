## Projeto Devsibre

## Sobre o projeto

- Plataforma para gerenciamento de movimentação de Formularios, Agenda, Inventarios e Cobranças.

## Ferramentas:

- JDK 8
- IDE Eclipse (STS4)
- Maven
- Docker/Docker-Compose

## Frameworks e Tecnologias:
- Spring Boot / Data
- JSP (JavaServer Pages)
- Hibernate
- Interface web com Bootstrap
- Testes de Integração com JUnit 5

## Banco de Dados:
- Mysql

## EXECUTE
- mvn clean install
Na rais do diretorio execute o comando a abaixo gerar imagem e o banco via container
- docker-compose up --build --force-recreate

## Acesso ao Frontend do Projeto
- http://localhost:8080/
- http://localhost:8080/agendas_User
- http://localhost:8080/Entrar
<br><br>
## TELA INICAL
![Relatorio de Membros](https://github.com/Ernilson/devsibre/assets/30840118/23e86abb-c18d-4187-a7b2-62a02f0ae6e6)

![Tela Agenda](https://github.com/Ernilson/devsibre/assets/30840118/3c14cd16-a1d7-4dda-9c80-99a9c0bc25c3)

![Tela de Cadastro](https://github.com/Ernilson/devsibre/assets/30840118/85aced31-da8b-4d36-9e4b-f8fa73c94829)

![Tela de Cobrança](https://github.com/Ernilson/devsibre/assets/30840118/97b8d018-9853-4e68-bfaf-89e5a694afbc)

![Tela de Patrimonio](https://github.com/Ernilson/devsibre/assets/30840118/126dbff2-243d-4f2a-90e6-67701c0ebd3a)

![modelagem](https://github.com/Ernilson/devsibre/assets/30840118/1ea4e495-f6ea-4888-afb1-a076a1602dc0)
Comandos Docker:

para iniciar um container que ja existe.(que contenha images)
 docker start NOME_CONTAINER (teste2)
ou docker stop e nome do servidor(teste2)
--------------------------------------------------------------
comando para ver as imagens no container
docker images
--------------------------------------------------------------
Renomear container
docker rename adoring_ardinghelli servidor-teste
----------------------------------------------------------------
Para Remover container
docker rm nome do container ou Id (após para o container) senão docker rm -f (para força)
----------------------------------------------------------------
Para Remover imagem
docker rmi e o Id da imagem
--------------------------------------------------------------
comando para visualizar o status do container
docker ps -a 
---------------------------------------------------------------
comando para entrar no container
docker attach nome do container ou Id
---------------------------------------------------------------
comando para sair do container
exit
-------------------------------------------------------------------
comando para mostrar atualizações ou tudo que foi mudado no container
docker diff nome do container ou Id
----------------------------------------------------------------------------
-------------------------comando para criar container--------------------------
docker run --name mybanco -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql
-----------------------------------------------------------------------------
docker exec -it "nome do container" mysql -p
docker run -it "nome do container" mysql -p
------------------------------------------------------------------------------------
docker-compose up --build --force-recreate
------------------------------------------------Comando para imagem Docker chamada "devsibre" com base no Dockerfile fornecido e com as variáveis de ambiente e argumentos especificados---------------------------------
docker build --build-arg PROFILE=dev --build-arg ADDITIONAL_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8000" -t devsibre .
------------------------------postgres------------------------------------------
docker exec -it postgres-0 bash
psql -U postgres
\du -> para super usuario
psql -h localhost -p 5432 -U postgres
