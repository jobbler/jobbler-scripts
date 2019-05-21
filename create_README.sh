#! /bin/bash




sed -i '/^== List of Scripts/q' ./README.md

find ./*/ -name README.md -exec cat {} \; >> ./README.md
