
build:
	cd mi101/notebooks; make
	jb build mi101

open:
	open mi101/_build/html/index.html

links:
	# Bibtex database
	cp -rf ~/Git/zachs_macros/pubs.bib bibtex_database.bib

clean:
	jb clean .
