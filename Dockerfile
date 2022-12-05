FROM golang:1.18

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main

ENTRYPOINT [ "/app/main" ]