FROM golang

RUN apt-get update && apt-get install unzip
RUN mkdir /app/

WORKDIR /app/

# Get protoc and unzip and add to path
ADD https://github.com/protocolbuffers/protobuf/releases/download/v3.15.6/protoc-3.15.6-linux-x86_64.zip /app/protoc.zip
RUN unzip protoc.zip

RUN go get github.com/golang/protobuf/protoc-gen-go github.com/golang/protobuf/proto

RUN chmod +x /app/bin/protoc
RUN mv /app/bin/protoc /usr/local/bin/

CMD ["tail", "-f", "/dev/null"]
