#Minha primeira imagem
FROM node:14.14.0
USER root
# Env cria uma variavel de ambiente
ENV URL_BASE endereco
ENV NEW_MESSAGE mensagem
#COPY copia um arquivo para dentro do container
COPY nome.txt /root
# RUN executar o comando
RUN echo "Olá ADS 5S"
RUN apt update && apt -y install vim
#Expor uma porta para aplicações
EXPOSE 8080
#concatenando dados de usuário no arquivo passwd
RUN echo "aula:x:1000:1000:aula:/home/aula:/bin/bash" >> /etc/passwd
USER aula
CMD [ "node" ]