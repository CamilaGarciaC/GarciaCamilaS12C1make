resultados.pdf: plotdatos.pdf plotdatos1.pdf resultados.tex
	pdflatex resultados.tex

plotdatos.pdf: datos.dat plotdatos.py
	python plotdatos.py

plotdatos1.pdf: datos.dat plotdatos1.py
	python plotdatos1.py

datos.dat: a.out
	./a.out>>

a.out : makedatos1.cpp
	g++ makedatos1.cpp
