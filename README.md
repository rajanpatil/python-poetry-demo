# python-poetry-demo

python-poetry-demo is a python based service.

### Pre-requisites
- Python 3.7
- Poetry

### Install dependencies
`$ poetry install`

### Install pre-commit hooks
After cloning the repository, run the following command to install pre-commit hook.
This automatically runs [black](https://black.readthedocs.io/en/stable/the_black_code_style.html) , 
[flake8](https://flake8.pycqa.org/en/stable/) and [mypy](https://mypy.readthedocs.io/en/stable/index.html)
tools, which perform code formatting. Make sure to add the formatted files to git again.

`$ poetry run pre-commit install`

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


### Versioning
The python-poetry-demo is using versioning scheme of `<major>:<minor>`. The minor version will be incremented for 
every merge on master. The major version can be incremented for breaking changes which are not backward compatible. 
The continuous integration pipeline increments minor version on successful `Build and Push Docker Image` stage.

Example: `python-poetry-demo:1.0`
