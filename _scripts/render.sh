#!/bin/sh
#pandoc -s -S -f markdown+pipe_tables+footnotes -c test.css sections/*.md  -o assets/downloads/What_Is_Right_with_Marriage.html
pandoc --latex-engine=xelatex -f markdown+pipe_tables+footnotes sections/*.md  -o assets/downloads/What_Is_Right_with_Marriage.pdf
pandoc -S --epub-cover-image=assets/cover.jpg --epub-metadata=_downloads/epub/metadata.yml -f markdown+pipe_tables+footnotes sections/*.md  -o assets/downloads/What_Is_Right_with_Marriage.epub
pandoc sections/*.md -t plain -o assets/downloads/What_Is_Right_with_Marriage.txt
