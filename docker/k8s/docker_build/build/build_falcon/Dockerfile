FROM golang:1.10-alpine3.8
RUN mkdir -p /root/build
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh make
ENV GOPATH=/root/build/
RUN go get github.com/open-falcon/falcon-plus
RUN go get -u github.com/golang/dep/cmd/dep
RUN apk add --no-cache gcc build-base libtool autoconf automake
#RUN /root/build/bin/dep ensure
WORKDIR /root/build/src/github.com/open-falcon/falcon-plus
RUN make clean all pack
RUN mkdir -p /root/falcon-plus
run mv open-falcon*.gz /root/falcon-plus
WORKDIR /root/falcon-plus
RUN tar -xzvf open-falcon*.gz
RUN rm -rf /var/cache/apk/*
#RUN apk --help
RUN apk del  git openssh make gcc build-base libtool autoconf automake

#RUN make clean all pack
#WORKDIR /root/graph
#CMD ["./bin/falcon-graph", "-c", "./config/cfg.json"]
