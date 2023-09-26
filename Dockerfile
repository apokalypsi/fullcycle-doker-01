# Use a imagem oficial do Go como estágio de construção
FROM golang:latest as build-stage

# Defina o diretório de trabalho para /src
WORKDIR /src

# Copie o código fonte para o diretório de trabalho
COPY codeedu.go .

# Compile o código fonte
RUN CGO_ENABLED=0 go build -o codeedu codeedu.go

# Use uma imagem mínima como estágio de produção
FROM scratch as production-stage

# Copie o executável do estágio de construção
COPY --from=build-stage /src/codeedu /codeedu

# Configure o comando padrão para executar o programa
CMD ["/codeedu"]