# Local provisioning

## Create host entry on your host 

Add following entry in your host configuration:

```
127.0.0.1 standup-companion.local www.standup-companion.local
```

## Laravel Sail and Docker provisioning

It is recommended to use [Laravel Sail](https://laravel.com/docs/9.x/sail) for managing containers. Docker compose is still needed in order to provision local environment.

### Start and stop containers

Stopping containers:

```bash
. ./source/vendor/bin/sail down --remove-orphans
```

Starting containers:

```bash
. ./source/vendor/bin/sail up -d
```

### Accessing website

Point your web browser to the [following address](http://standup-companion.local:8080) to access the website

### Accessing running containers

In order to access via bash to the local Laravel container execute following command:

```bash
docker compose exec standup_companion_local_service /bin/bash
```