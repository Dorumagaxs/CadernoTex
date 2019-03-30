build:
	pdflatex main
	pdflatex main
	# biber main
	# pdflatex main

view: build
	chrome main.pdf

clean:
	rm main.aux main.log main.toc main.out
	echo "Diretório limpo!"
