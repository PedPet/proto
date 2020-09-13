user:
	protoc ./api/user/user.proto --go_out=plugins=grpc:./api/

breeder:
	protoc ./api/breeder/breeder.proto --go_out=plugins=grpc:./api/

clean:
	rm -f /app/api/**/*.pb.go
