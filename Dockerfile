FROM python:3.7-slim as base
RUN useradd --create-home app
WORKDIR /home/app
USER app
ENV PATH "$PATH:/home/app/.local/bin"


FROM base as builder
COPY --chown=app dist dist
RUN pip install dist/*.whl --no-index --find-links dist/wheelhouse --user


FROM base as final
COPY --from=builder --chown=app /home/app/.local /home/app/.local
EXPOSE 8000
ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8000", "-w", "4", "python_poetry_demo.app:app"]
