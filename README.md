# Czechitas DA DEPLOYMENT


## DB 
```bash
docker-compose -f mysql/docker-compose.yaml --env-file .env up -d 
```

## app 
```bash
docker-compose -f app/example/docker-compose.yaml --env-file .env up -d
```

