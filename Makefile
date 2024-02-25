# Builds the site by running bliss script then rsyncing the public directory, stylesheet, and CNAME
build:
	./bliss
	rsync -r public/ docs/public
	rsync style.css docs/style.css
	rsync CNAME docs/CNAME

# Cleans up build directory
clean:
	rm -rf docs/*

# Builds the site by running build script, runs a Python webserver in the build directory
test:
	make build
	python3 -m http.server -d docs/

.PHONY: build clean watch
