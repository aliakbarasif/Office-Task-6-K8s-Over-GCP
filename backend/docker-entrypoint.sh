#!/bin/bash

set -e

echo "Running database migrations"
yarn run migrate

echo "Starting server"
yarn run start
