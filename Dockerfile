#firststage

FROM golang:1.6-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .


#second Stage


FROM alpine
COPY --from=0 /app/main /app  #from=0 means fromstage1
EXPOSE 80
CMD ["/app"]
