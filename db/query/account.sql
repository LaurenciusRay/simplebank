-- name: GetAccount :one
SELECT * FROM accounts
WHERE id = $1;

-- name: ListAccounts :many
SELECT * FROM accounts
ORDER BY id;

