

.PHONY: build
build:
	swift --version
	swiftc -target wasm32-unknown-wasi example.swift -o example.wasm
	wasm-opt -O example.wasm -o example.wasm
