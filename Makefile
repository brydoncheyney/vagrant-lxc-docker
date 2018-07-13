all: clean docker run

.PHONY: run clean

clean:
	sudo rm -rf builds

docker:
	docker build --tag vagrant-lxc .

run:
	docker run --volume ${PWD}:/src -it vagrant-lxc
