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
    read -n 1 -s -r -p "File .env does not exist. Do you want to copy it from .env.dist? (y/n)" response_copy
    echo ""
    if [[ "${response_copy}" == "y" || "${response_copy}" == "Y" ]]
    then
      cp -p "${provisioning_dir}/.env.dist" "${provisioning_dir}/.env"
    fi
  fi

  echo "Please, check variables in the .env file."
  read -n 1 -s -r -p "Press any key to continue when you are sure every variable is correct."
  echo ""

  echo "Building vendor directory..."

  docker run --rm --interactive --tty \
    --volume ${PWD}/source:/app \
    --user $(id -u):$(id -g) \
    composer install

  echo "Starting local services..."

  . ./source/vendor/bin/sail up -d

  ping -c 3 "${HTTP_HOST}" || exit 1

  xdg-open "http://${http_host}:${http_port}"
)