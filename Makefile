.PHONY: docs

docs:
	poetry shell && sphinx-build -vvv -b html ./docs ./docs/public
	cd docs/public
	python -m http.server