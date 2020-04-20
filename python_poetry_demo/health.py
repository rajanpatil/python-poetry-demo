from flask import jsonify, Blueprint
from typing import Tuple, Any
import logging

health_blueprint = Blueprint("health_blueprint", __name__)


@health_blueprint.route("/health", methods=("GET",))
def health() -> Tuple[Any, int]:
    logging.info("status: ok")
    return jsonify({"status": "ok"}), 200
