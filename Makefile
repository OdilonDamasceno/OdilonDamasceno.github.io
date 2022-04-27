FLUTTER=$(shell which flutter)

.PHONY: build

build:
	$(FLUTTER) pub get
	mkdir -p docs/
	$(FLUTTER) build web --release
	mv build/web/* docs/

	## Update base href to ./
	sed "s/<base href=\"\/\">/<base href=\".\/\">/g" -i docs/index.html

clean:
	$(FLUTTER) clean
	rm -rf docs/*
