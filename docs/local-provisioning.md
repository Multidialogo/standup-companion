# Local provisioning

### Before starting

Add following entry in your host configuration:

```
127.0.0.1 standup-companion.local www.standup-companion.local
```

## Installation steps

### Using the given *install-provisioning.sh* script

Simply run the *install-provisioning.sh* and follow the on-terminal instructions.

### Manual

If you prefer to install the local provisioning manually, or simply want to know what's happening, here is described the steps needed to run the project locally.

#### Docker compose environment file

Copy the existing *.env.dist* file that is in the root of the repository. The new file must be named *.env* in order to work without further configurations.

#### Laravel environment file

Copy the existing *.env.dist* file that is in the source directory. The new file must be named *.env* in order to work.


#### Build vendor directory

```bash
docker run --rm --interactive --tty \
  --volume ${PWD}/source:/app \
  --user $(id -u):$(id -g) \
  composer:latest install
```

## Usage

It is recommended to use [Laravel Sail](https://laravel.com/docs/9.x/sail) for managing services and containers. Docker compose is still needed in order to provision local environment.

### Start and stop local services

Starting containers:

```bash
./source/vendor/bin/sail up -d
```

Stopping containers:

```bash
./source/vendor/bin/sail down --remove-orphans
```

### Accessing website

Point your web browser to the [following address](http://standup-companion.local:8080) to access the website

### Accessing running containers

In order to access via bash to the local Laravel container execute following command:

```bash
docker compose exec standup_companion_local_service /bin/bash
```