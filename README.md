## Variáveis de ambiente
```bash
RABBIT_EXCHANGE_NAME            # Nome do topico. atente-se para ser igual nos dois logstashs
RABBIT_EXCHANGE_TYPE            # Tipo de exchange. use 'topic'
RABBIT_HOST                     # Endereço do servidor de Rabbit. atente-se para ser igual nos dois logstashs
```

## Rodar local direto em docker
Você precisará ter um rabbitmq rodando (tipo em docker tb).

edite o arquivo rodaEmDocker.sh e aponte o IP do seu rabbitmq.

depois, é só rodar ele com 
```
./rodaEmDocker.sh
```