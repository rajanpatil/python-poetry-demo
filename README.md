# python-poetry-demo

python-poetry-demo is a python based service.

### Pre-requisites
- Python 3.7
- Poetry

### Install dependencies
`$ poetry install`

### Run tests
`$ poetry run pytest`

### Run Flask server locally
`$ poetry run python -m python_poetry_demo.app`

### Build docker image
Run following command to build docker image (Only for developer machines). 

`$ ./build-image.sh`

### Run docker container locally
Refer docker image tag generated during `Build docker image`.
Run following command to run docker container locally.

`$ docker run -p 8000:8000 python-poetry-demo:latest`

### Jenkins shared lib

The `Jenkinsfile` doesn't use shared lib, `Jenkinsfile_simple` and `Jenkinsfile_override_steps` need shared lib configured on Jenkins.
The [jenkins shared](https://github.com/rajanpatil/jenkins-shared-lib) lib tested with below files.

- Jenkinsfile: declarative inline pipeline
- Jenkinsfile_simple: pipeline from shared lib
- Jenkinsfile_override_steps: override custom steps in shared lib
