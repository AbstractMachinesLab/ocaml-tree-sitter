export

.PHONY: build
build:
	dune build @all -j8

.PHONY: watch
watch:
	dune build @all --watch -j8

.PHONY: install
install:
	dune install

.PHONY: setup
setup:
	opam install dune menhir ocaml-compiler-libs cmdliner ppx_sexp_conv sexplib ocamlformat bisect_ppx

.PHONY: test
test:
	dune runtest

.PHONY: coverage
coverage:
	dune runtest --instrument-with bisect_ppx --force
	bisect-ppx-report html --expect src

.PHONY: promote
promote:
	dune promote

.PHONY: fmt
fmt:
	dune build @fmt --auto-promote
	cargo fmt

.PHONY: clean
clean:
	dune clean
