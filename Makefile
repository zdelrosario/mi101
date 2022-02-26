
build:
	cd mi101/notebooks; make
	jb build mi101

package:
	cd mi101/notebooks; make
	mkdir -p exercises
	mkdir -p exercises/notebooks
	mkdir -p exercises/notebooks/data
	mkdir -p exercises/images
	cp -fr mi101/notebooks/*assignment.ipynb exercises/notebooks/.
	cp -fr mi101/notebooks/check_install.ipynb exercises/.
	cp -fr mi101/images exercises/.
	cp -fr requirements.txt exercises/.

zip: package
	zip -r exercises.zip exercises
	rm -r exercises

open:
	open mi101/_build/html/index.html

links:
	# Bibtex database
	cp -rf ~/Git/zachs_macros/pubs.bib bibtex_database.bib

dkbuild: package
	docker build -t mi101 .
	rm -r exercises

dkrun:
	docker run -p 10000:8888 f727fc2ff263

clean:
	jb clean .
