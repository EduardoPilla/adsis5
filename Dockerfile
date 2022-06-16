#Minha primeira imagem
FROM node:14.14.0
# Env cria uma variavel de ambiente
ENV URL_BASE endereco
#COPY copia um arquivo para dentro do container
COPY nome.txt /root
# RUN executar o comando
RUN cat /root/nome.txt
CMD [ "node" ]