build:
	@docker build -t proxy-network ./docker/

gen:
	@openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout ./certs/localhost.key -out ./certs/localhost.crt -subj "/CN=*.localhost" -days 3650