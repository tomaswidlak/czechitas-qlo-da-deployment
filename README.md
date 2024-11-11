# Czechitas DA DEPLOYMENT


## SIMPLE

### Deployment
Running mysql DB and all instances in one docker compose
```bash 
cd simple
docker-compose up -d
```

### Routing (nginx)

Create new server config with the following command:
```bash
./create_nginx_config.sh sub.example.com 8801
```
 


