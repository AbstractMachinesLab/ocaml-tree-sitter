(lang dune 2.7)
(name tree-sitter)

(generate_opam_files true)

(license Apache-2.0)
(source (github AbstractMachinesLab/ocaml-tree-sitter))

(maintainers "Leandro Ostera <leandro@ostera.io>")
(authors "Leandro Ostera <leandro@ostera.io>")

(using menhir 2.1)
(cram enable)

(package
 (name tree-sitter)
 (synopsis "Bindings to the tree-sitter Runtime")
 (description "")
 (depends
  (dune (>= "2.7"))
  (ocaml (>= "4.11.1"))
  "conf-rust-2018"
  ))
