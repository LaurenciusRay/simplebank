createdb:
	createdb -U raymondantonio simple_bank

dropdb:
	dropdb -U raymondantonio simple_bank

migrateup:
	migrate -path db/migration \
		-database "postgresql://raymondantonio@localhost:5432/simple_bank?sslmode=disable" \
		-verbose up

migratedown:
	migrate -path db/migration \
		-database "postgresql://raymondantonio@localhost:5432/simple_bank?sslmode=disable" \
		-verbose down

migration:
	migrate create -ext sql -dir db/migration -seq $(name)

sqlc:
	sqlc generate

.PHONY: createdb dropdb migrateup migratedown migration sqlc