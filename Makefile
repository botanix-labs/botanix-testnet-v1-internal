.PHONY: start-testnet-rpc stop-testnet-rpc status-testnet-rpc

start-mutinynet:
	docker-compose --env-file .bitcoin.env -f mutiny.docker-compose.yml up -d 

start-testnet-rpc:
	docker-compose --env-file .bitcoin.env -f docker-compose.yml up -d

stop-testnet-rpc:
	docker-compose --env-file .bitcoin.env -f docker-compose.yml down

status-testnet-rpc:
	docker logs -f botanix-poa-node-rpc