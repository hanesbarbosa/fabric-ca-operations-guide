docker-compose -f ./docker-compose.yaml down -v
docker volume prune -f
rm -rf /tmp/hyperledger
