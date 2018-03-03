FROM golang:1.10 as builder
WORKDIR /go/src/app
COPY . .
RUN CGO_ENABLED=0 go build -o app .

FROM alpine:latest
WORKDIR /root/
COPY --from=0 /go/src/app/app .
CMD ["./app"]