# Local provisioning

## Table of content

* [Requirements](#requirements)
  * [Required packages/software](#required-packagessoftware)
  * [Host configuration](#host-configuration)
* [Installation steps](#installation-steps)
  * [Docker compose environment file](#docker-compose-environment-file)
  * [Laravel environment file](#laravel-environment-file)
  * [Build vendor directory](#build-vendor-directory)
  * [Build node modules](#build-node-modules)
  * [Migrations and local database setup](#migrations-and-local-database-setup)
* [Usage](#usage)
  * [Start and stop local services](#start-and-stop-local-services)
  * [Accessing website](#accessing-website)
  * [Accessing running containers](#accessing-running-containers)

## Requirements

### Required packages/software

* git
* Docker compose (v2)

### Host configuration

Add following entry in your host configuration:

```
127.0.0.1 standup-companion.local www.standup-companion.local
```

## Installation steps

You can run the *install-provisioning.sh* script. If you prefer to do it manually, you can inspect the script source
code, or you can follow the steps described down here.

### Docker compose environment file

Copy the existing *.env.dist* file that is in the root of the repository. The new file must be named *.env* in order to work without further configurations.

### Laravel environment file

Copy the existing *.env.dist* file that is in the source directory. The new file must be named *.env* in order to work.

### Build vendor directory

```bash
docker run --rm --interactive --tty \
  --volume ${PWD}/source:/app \
  --user $(id -u):$(id -g) \
  composer:latest install
```

### Build node modules

```bash
docker run --rm --interactive --tty \
  --workdir /app \
  --volume ${PWD}/source:/usr/src/app \
  --user $(id -u):$(id -g) \
  node:lts-slim /bin/sh -c "npm install; npm run dev"
```

### Migrations and local database setup

```bash
docker compose run standup_companion_local_service php artisan migrate
```

## Usage

For managing services and containers, you can choose to use 
<a href="https://docs.docker.com/compose/" target="_blank">Docker compose</a> or
<a href="https://laravel.com/docs/9.x/sail" target="_blank">Laravel Sail</a>.

### Start and stop local services

#### Starting containers

Using Docker Compose (v2):

```bash
docker compose up -d
```

Using Laravel Sail:

```bash
./source/vendor/bin/sail up -d
```

#### Stopping containers

Using Docker Compose (v2):

```bash
docker compose down --remove-orphans
```

Using Laravel Sail:

```bash
./source/vendor/bin/sail down --remove-orphans
```

### Accessing website

Point your web browser to the <a href="http://standup-companion.local:8080" target="_blank">following address</a> 
to access the website

### Accessing running containers

In order to access via bash to the local Laravel container execute following command:

```bash
docker compose exec standup_companion_local_service /bin/sh
```
