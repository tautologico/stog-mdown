all:
	ocamlfind ocamlopt -c -rectypes -package omd,stog src/stog_mdown.ml
	ocamlfind ocamlopt -o stog_mdown.cmxs -shared -linkall -linkpkg -package omd src/stog_mdown.cmx
