******** Anotações importantes para a subida do Kafka no Docker


 - Rodar o comando docker-compose up -d --build dentro de um prompt de comando como ADM. 
 As configs que usei para rodar estão nesse site: https://cursos.alura.com.br/forum/topico-sugestao-docker-compose-kafka-zookeeper-e-kakfa-ui-279740

 - docker ps -a Eu vejo quais os containers que estão de pé.
 - docker stop <nome_ou_id_do_container> Eu paro o meu container pelo ID listado no comando do PS.
 - docker run -d -p 8080:80 <nome_ou_id_da_imagem> Comando para rodar os container criados no Docker.
 - Derruba o docker compose - docker-compose down
 - docker-compose up -d --remove-orphans - Sobe de novo o docker


 Para aplicação Java também subir no Docker eu tive que configurar um aquivo Dockerfile dentro da raíz do projeto Spring. Sendo assim, com as minhas configs apotandas para o target que gerei com o comando package eu mandei o comando docker-compose down
 e depois mando o comando docker-compose up -d --build que ele rebuilda tudo e com o meu Dockerfile. Caso eu precise subir de novo dentro do meu docker dou o comando docker-compose up -d --remove-orphans. 

 Lembre-se que cada vez que você alterar algo na sua aplicação Java seja do consumidor ou do produtor das mensagens você precisa rodar o comando no Java que gera um novo target. [ mvn clean package -DskipTests ]
 
 Observação - Para instalação do Docker na maquina windows eu usei esse video como paramtero:
 https://www.youtube.com/watch?v=SIpY5PZ9PBQ&list=PLmY5AEiqDWwDI8-85Nu2ZDlEsbMcUrINf


 ****** Curso de Kafka que eu estou vendo para realizar meus estudos: https://www.youtube.com/watch?v=twDixr_XefI
