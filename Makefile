dev:
	pdflatex -interaction nonstopmode -file-line-error -output-directory="./output" "main.tex" || inotifywait -m -e modify --exclude '^.*\.(pdf|log|toc|aux)$$' --format %f . | while read f; do echo $$f modified; pdflatex -interaction nonstopmode -file-line-error -output-directory="./output" "main.tex"; done
