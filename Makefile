setup:
	python3 -m venv venv

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

lint:
	pylint --disable=R,C hello.py
	docker run --rm -i hadolint/hadolint < Dockerfile

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test