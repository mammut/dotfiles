.PHONY: clean all install_dependencies bootstrap antibody-refresh

all: install-dependencies bootstrap

install-dependencies:
	./install_dependencies

bootstrap:
	./bootstrap

clean:
	./clean