FLUTTER=$(shell which flutter)

.PHONY: build

build:
	$(FLUTTER) pub get
	mkdir -p docs
	$(FLUTTER) build web --release --base-href '/'
	mv build/web/* docs/

clean:
	$(FLUTTER) clean
	rm -rf docs/*
