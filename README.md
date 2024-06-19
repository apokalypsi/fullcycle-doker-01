
# Desafio Full Cycle Módulo Docker
## Desafio Go

Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
Você terá que publicar uma imagem no docker hub. Quando executarmos:

```sh
docker run alphadiegobatista/fullcycle
```

Temos que ter o seguinte resultado: `Full Cycle Rocks!!`

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".

Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

## Build 
```sh
docker build -t alphadiegobatista/fullcycle .
```

## Pull 
```sh
docker pull alphadiegobatista/fullcycle
```

## Executar o container
```sh
docker run --rm alphadiegobatista/fullcycle
```
