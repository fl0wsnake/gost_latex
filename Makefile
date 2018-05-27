dev:
	mkdir output -p; pdflatex -interaction nonstopmode -file-line-error -output-directory="./output" "main.tex"; inotifywait -m -e modify --include "^.*\.tex$$" --format %f . | while read f; do echo $$f modified; pdflatex -interaction nonstopmode -file-line-error -output-directory="./output" "main.tex"; done
