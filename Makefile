
build:
	cd mi101/notebooks; make
	jb build mi101

zip:
	cd mi101/notebooks; make
	mkdir -p exercises
	mkdir -p exercises/notebooks
	mkdir -p exercises/notebooks/data
	mkdir -p exercises/images
	cp -fr mi101/notebooks/*assignment.ipynb exercises/notebooks/.
	cp -fr mi101/notebooks/check_install.ipynb exercises/.
	cp -fr mi101/images exercises/.
	cp -fr requirements.txt exercises/.
	zip -r exercises.zip exercises
	rm -r exercises

open:
	open mi101/_build/html/index.html

links:
	# Bibtex database
	cp -rf ~/Git/zachs_macros/pubs.bib bibtex_database.bib

clean:
	jb clean .
