#!/bin/bash

cd `dirname $0`
mkdir -p build/html
mkdir -p build/html/img
cp src/styles.css build/html/styles.css
rsync --archive --delete src_md/img/ build/html/img

cd build/html
pandoc \
	--output=getting-work-done-in-zim.html \
	--from=markdown+hard_line_breaks+pipe_tables --to=html5 \
	--css=styles.css \
	--standalone --table-of-contents --smart \
	../../src/*.md
