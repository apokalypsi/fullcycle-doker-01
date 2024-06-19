# Etapa de construção
FROM golang:alpine AS builder

# Instalar Git
RUN apk update && apk add --no-cache git

WORKDIR /app
COPY . .

# Baixar módulos Go (caso existam) e construir o binário
RUN go mod init example.com/fullcycle && go mod tidy
RUN go build -o main .

# Etapa final
FROM scratch
COPY --from=builder /app/main .
ENTRYPOINT ["./main"]
