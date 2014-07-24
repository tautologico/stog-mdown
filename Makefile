all:
	ocamlfind ocamlopt -o Stog_mdown.cmxs -shared -linkall -rectypes -package omd -package stog -linkpkg src/stog_mdown.ml
