FROM       golang:1.10.1-stretch
RUN        go get -u github.com/DATA-DOG/godog/cmd/godog
ENTRYPOINT ["godog"]
