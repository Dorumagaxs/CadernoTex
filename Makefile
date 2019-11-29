
#	CadernoTex is a template to format your class anotations in a beautiful, simple and useful way.
#	Copyright (C) 2019  Gabriel Santos de Mello
#	
#	This program is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	(at your option) any later version.
#	
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#	
#	You should have received a copy of the GNU General Public License
#	along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#	Contact: gabrielsdmello@gmail.com

all: build view

build:
	if [ ! -d bin/ ]; then mkdir bin; fi
	pdflatex --output-directory=bin/ main
	pdflatex --output-directory=bin/ main
#	biber -input-directory=bin/ -output-directory=bin/ main
#	pdflatex --output-directory=bin/ main

view:
	zathura bin/main.pdf &

clean:
	rm -r bin/
