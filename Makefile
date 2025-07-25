SHELL=/bin/bash

# brew install optipng jpegoptim

dev:
	toucan generate --target dev

dist:
	toucan generate --target live

diff:
	diff --color=always -r dist-prev dist --exclude=api || true

watch:
	toucan watch .

serve:
	toucan serve ./dist -p 3000

png:
	find ./* -type f -name '*.png' -exec optipng -o7 {} \;

jpg:
	find ./* -type f -name '*.jpg' | xargs jpegoptim --all-progressive '*.jpg'
