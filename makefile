common-proto:
	protoc ./common/common.proto --go_out=plugins=grpc:./common/

user:
	protoc -I ./common -I ./api/user user.proto --go_out=plugins=grpc:./api/

breeder:
	protoc -I ./common -I ./api/breeder/ breeder.proto --go_out=plugins=grpc:./api/

clean:
	rm -f /app/api/**/*.pb.go /app/common/*.pb.go
