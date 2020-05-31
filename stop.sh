eval $(grep -v '^#' ./.env.local | sed 's/^/export /')
docker-compose -f "docker-compose.yml" down