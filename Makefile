.PHONY: start-mutinynet stop-mutinynet status-mutinynet start-testnet stop-testnet status-testnet

# Mutinynet commands
start-mutinynet:
	docker-compose --env-file .bitcoin.env -f mutiny.docker-compose.yml up -d 

stop-mutinynet:
	docker-compose --env-file .bitcoin.env -f mutiny.docker-compose.yml down

status-mutinynet:
	docker logs -f mutiny-bitcoind

# Testnet commands
start-testnet:
	docker-compose --env-file .bitcoin.env -f docker-compose.yml up -d

stop-testnet:
	docker-compose --env-file .bitcoin.env -f docker-compose.yml down

status-testnet:
	docker logs -f reth-rpc-node