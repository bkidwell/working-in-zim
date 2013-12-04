#!/bin/bash

cd `dirname $0`
mkdir -p build/markdown build/html
rm -rf build/markdown/*.markdown
zim --export --format=markdown --output=build/markdown --template=assets/template.markdown src
cp assets/styles.css build/html/styles.css
cd build/html
pandoc \
	--output=getting-work-done-in-zim.html \
	--from=markdown+hard_line_breaks --to=html5 \
	--css=styles.css \
	--standalone --table-of-contents --smart \
	../../assets/header.markdown \
	../markdown/*.markdown
