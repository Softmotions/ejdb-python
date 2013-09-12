
all:
	python3 ./setup.py clean build sdist

test:
	python3 ./setup.py build test

clean:
	- rm -f ./testdb*
	- rm -rf ./dist

deb-packages: clean
	debuild --no-tgz-check $(DEBUILD_OPTS)

.PHONY: all test clean deb-packages
