#!/usr/bin/env bash

app_name="standup-companion"
provisioning_dir="${PWD}"
source_dir="${provisioning_dir}/source"
repo_source="git@github.com:Multidialogo/${app_name}.git"
http_host="standup-companion.local"
http_port=8080

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
    composer install
)