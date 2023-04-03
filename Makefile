# Builds the site by running bliss script then rsyncing the public directory, stylesheet, and CNAME
build:
	./bliss
	rsync -r public/ build/public
	rsync style.css build/style.css
	rsync CNAME build/CNAME

# Cleans up build directory
clean:
	rm -rf build/*

# For testing locally, see README
watch:
	while true; do \
	ls -d .git/* * posts/* pages/* header.html | entr -cd make ;\
	done

.PHONY: build clean watch
