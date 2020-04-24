FROM golang:1.14.2

COPY croc-hunter.go /go/src/croc-hunter/
COPY static/ static/

ENV GOPATH /go

RUN cd $GOPATH/src/croc-hunter/ && go install -v .

EXPOSE 8080

CMD [ "croc-hunter" ]