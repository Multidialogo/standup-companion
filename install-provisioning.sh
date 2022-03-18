#!/usr/bin/env bash

provisioning_dir="${PWD}"
source_dir="${provisioning_dir}/source"

(
  set -o errexit
  set -o pipefail
  set -o nounset

  echo "Installing local provisioning..."

  if [ ! -f "${provisioning_dir}/.env" ]
  then
    cp -p "${provisioning_dir}/.env.dist" "${provisioning_dir}/.env"
  fi

  if [ ! -f "${source_dir}/.env" ]
  then
    cp -p "${source_dir}/.env.dist" "${source_dir}/.env"
  fi

  echo "Please, check variables in the .env files (both the one in the provisioning root, and the one in the source root)."
  read -n 1 -s -r -p "Press any key to continue when you are sure every variable is correct."
  echo ""

  echo "Building vendor directory..."

  docker run --rm --interactive --tty \
    --volume ${PWD}/source:/app \
    --user $(id -u):$(id -g) \
    composer:latest install

  echo "Building node modules..."

  docker run --rm --interactive --tty \
    --workdir /app \
    --volume ${PWD}/source:/app \
    --user $(id -u):$(id -g) \
    node:lts-slim /bin/sh -c "npm install; npm run dev"

  echo "Migrations..."

  docker compose run standup_companion_local_service php artisan migrate

  echo "Local provisioning successfully installed!"
  echo "You can now run 'docker compose up -d' to start local services."
)