#!/bin/bash

cd `dirname $0`
mkdir -p build/html
mkdir -p build/html/img
mkdir -p build/html/icon
cp src/styles.css build/html/styles.css
rsync --archive --delete src/img/ build/html/img
rsync --archive --delete src/icon/ build/html/icon

cd build/html
pandoc \
	--output=getting-work-done-in-zim.html \
	--from=markdown+hard_line_breaks+pipe_tables --to=html5 \
	--css=styles.css \
	--standalone --table-of-contents --smart \
	../../src/*.md
