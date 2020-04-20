import pytest

from typing import Any
from python_poetry_demo.app import app


@pytest.fixture
def client() -> Any:
    with app.test_client() as client:
        yield client
