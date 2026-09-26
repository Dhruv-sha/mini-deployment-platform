FROM golang:1.24-alpine AS build

WORKDIR /build

COPY go.mod go.sum* ./

RUN go mod download

COPY . .

RUN go build -o app .

FROM alpine:latest

WORKDIR /app

COPY --from=build /build/app .

EXPOSE APP_PORT

CMD ["./app"]