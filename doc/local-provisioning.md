# Local provisioning

## Create host entry on your host 

Add following entry in your host configuration:

```dotenv
127.0.0.1 standup-companion.local www.standup-companion.local
```
## Docker compose provisioning

Docker compose v2 is needed in order to provision local environment.

### Building images

```bash
docker compose build  --no-cache
```

### Starting containers

```bash
docker compose up -d
```

### Accessing website

Point your web browser to the [following address](http://standup-companion.local:8889) to access the website

### Accessing running containers

In order to access via bash to the php container execute following command:

```bash
docker compose exec standup_companion_php /bin/bash
```

### Start and stop containers

Stopping containers:

```bash
docker compose down -v 
```

Starting containers:

```bash
docker compose up -d --force-recreate --remove-orphans 
```