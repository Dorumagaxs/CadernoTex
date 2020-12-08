./bin/main.pdf: main.tex materias/*/*
	if [ ! -d bin/ ]; then mkdir bin; fi
	pdflatex --output-directory=bin/ main
	pdflatex --output-directory=bin/ main
#	biber -input-directory=bin/ -output-directory=bin/ main
#	pdflatex --output-directory=bin/ main
build: ./bin/main.pdf

view: build
	zathura bin/main.pdf &

clean:
	rm -r bin/
