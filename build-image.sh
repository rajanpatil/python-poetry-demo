#!/bin/sh
# Builds docker image for developer machines.

if [[ -z "${INDEX_URI}" ]]; then
  echo "Environment variable 'INDEX_URI' is not defined.
    Set INDEX_URI environment variable as
    https://<your_regn_username>:<your_jfrog_api_key>@rt.artifactory.tio.systems/artifactory/api/pypi/pypi-dp-caps-local/simple"
  exit 1
fi

# Download non-dev dependencies
poetry export -f requirements.txt --without-hashes | \
        poetry run pip download -r /dev/stdin \
        -d dist/wheelhouse \
        --no-deps \
        --extra-index-url="${INDEX_URI}" \
        --platform linux_x86_64

# Build aplication wheel
poetry install && poetry build --format=wheel

# Build image
docker build -t python-poetry-demo:latest .
