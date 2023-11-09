.PHONY: help setup teardown

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependency \
	dependency/qemu \
	dependency/qemu/qemu

teardown:
	rm -r dependency

dependency:
	mkdir $@

dependency/qemu:
	mkdir $@

dependency/qemu/qemu:
	git clone https://github.com/qemu/qemu.git $@
