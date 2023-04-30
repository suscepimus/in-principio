neumes:
	lualatex --shel-escape ressources/neumes-doc.tex

protocole:
	lualatex --shel-escape protocole/prefixes.tex

clean:
	rm *.aux *.gaux *.log
