import json
from typing import Any


def test_health(client: Any) -> None:
    return_value = client.get("/health")
    assert return_value.status_code == 200
    assert json.loads(return_value.data) == {"status": "ok"}
