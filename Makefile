SRC = $(wildcard ./*.ipynb)

all: fastai2_tabular_hybrid docs

fastai2_tabular_hybrid: $(SRC)
	nbdev_build_lib
	touch fastai2_tabular_hybrid

docs_serve: docs
	cd docs && bundle exec jekyll serve

docs: $(SRC)
	nbdev_build_docs
	touch docs

test:
	nbdev_test_nbs

release: pypi
	nbdev_bump_version

pypi: dist
	twine upload --repository pypi dist/*

dist: clean
	python setup.py sdist bdist_wheel

clean:
	rm -rf dist