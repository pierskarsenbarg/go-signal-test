FROM golang:latest AS base

WORKDIR /app

COPY main.go .

RUN go build main.go 

FROM scratch

COPY --from=base /app/main .

CMD ["./main"]