#! /bin/bash




sed -i '/^== List of Scripts/q' ./README.asciidoc

find ./*/ -name README.asciidoc -exec cat {} \; >> ./README.asciidoc
