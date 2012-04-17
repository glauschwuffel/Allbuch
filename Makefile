LYX=/Applications/LyX.app/Contents/MacOS/lyx


# Das klappt auch noch nicht. Die eingebundenen Abschnitte in Teil 2 fehlen
# völlig.
pdf: Hauptdokument.lyx Referenzen.bib
	$(LYX) -e pdf2 Hauptdokument.lyx

# das geht irgendwie so gar nicht... die Umlaute werden nicht richtig umkodiert
#Referenzen.bib: Referenzen.utf8.bib
#	cp Referenzen.utf8.bib Referenzen.latin1.bib
#	recode utf8..latin1 Referenzen.latin1.bib
#	cp Referenzen.latin1.bib Referenzen.bib

view: pdf
	evince Hauptdokument.pdf&

edit:
	$(LYX) Hauptdokument.lyx&
