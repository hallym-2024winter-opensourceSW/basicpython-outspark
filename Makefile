venv: venv/touchfile

venv/touchfile:
	test -d venv || python3 -m venv venv
	venv/bin/pip install pytest
	touch venv/touchfile

test: venv
	venv/bin/pytest

clean:
	rm -rf venv
	find -iname "*.pyc" -delete
