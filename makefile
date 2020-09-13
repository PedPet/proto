all: common-proto user breeder

common-proto:
	protoc ./common/common.proto --go_out=plugins=grpc:./ --go_opt=paths=source_relative

user:
	protoc -I ./common -I ./api/user user.proto --go_out=plugins=grpc:./api/user --go_opt=paths=source_relative

breeder:
	protoc -I ./common -I ./api/breeder/ breeder.proto --go_out=plugins=grpc:./api/breeder --go_opt=paths=source_relative

clean:
	rm -f /app/api/**/*.pb.go /app/common/*.pb.go
