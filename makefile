user:
	protoc --proto_path=/app/api  --go_out=/app/api/ /app/api/user/user.proto

clean:
	rm -f /app/api/**/*.pb.go
