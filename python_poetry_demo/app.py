from typing import Any

from flask import Flask, request
import logging

from python_poetry_demo.health import health_blueprint

app = Flask(__name__)
app.config["DEBUG"] = True


app.register_blueprint(health_blueprint)

if __name__ == "__main__":
    app.run()
