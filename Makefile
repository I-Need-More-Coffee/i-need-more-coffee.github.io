# Builds the site by running bliss script then rsyncing the public directory, stylesheet, and CNAME
build:
	./bliss
	rsync -r public/ docs/public
	rsync style.css docs/style.css
	rsync CNAME docs/CNAME

# Cleans up build directory
clean:
	rm -rf docs/*

# For testing locally, see README
watch:
	while true; do \
	ls -d .git/* * posts/* pages/* header.html | entr -cd make ;\
	done

.PHONY: build clean watch
