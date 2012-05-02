LYX=/Applications/LyX.app/Contents/MacOS/lyx

CONFIGUREDIR=/Application
LYXSYSTEMDIR=/Applications/LyX.app/Contents/Resources/
LAYOUTDIR=$${HOME}/Library/Application\ Support/LyX-2.0/layouts/layouts
TEXPACKAGEDIR=$${HOME}/Library/texmf/tex/latex/allbuch

VIEW=/Applications/Preview.app/Contents/MacOS/Preview

LAYOUT=Dateien/Layouts/allbuch.layout
PACKAGE=Dateien/Packages/allbuch.sty

pdf: Hauptdokument.lyx Referenzen.bib
	$(LYX) -e pdf2 Hauptdokument.lyx

view: pdf
	$(VIEW) Hauptdokument.pdf&

edit:
	$(LYX) Hauptdokument.lyx&

reconfigure:
	cd $(LYXSYSTEMDIR) && python $(LYXSYSTEMDIR)/configure.py

install-layout: $(LAYOUT)
	cp -p $(LAYOUT) .
	make reconfigure

install-package: $(PACKAGE)
	if [ ! -d $(TEXPACKAGEDIR) ] ; then mkdir -p $(TEXPACKAGEDIR) ; fi
	cp $(PACKAGE) $(TEXPACKAGEDIR)  
	mktexlsr
