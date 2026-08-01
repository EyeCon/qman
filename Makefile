BUILD_DIR ?= build

.PHONY: all build installdependencies

all: installdependencies build

installdependencies:
	sudo apt install libcunit1-dev liblzma-dev meson
	uv tool install cogapp

build:
	meson setup $(BUILD_DIR)
	cd $(BUILD_DIR)
	meson compile
