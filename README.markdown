Das Allbuch der drei Fragezeichen
=================================

Dies ist das Allbuch der drei Fragezeichen.

In diesem Buch wirst du alles über die drei Fragezeichen nachlesen können. Zu
jedem Buch, jedem Hörspiel, jedem Film. Jedem Ort, jedem Charakter, jedem
Autor, jedem Sprecher, ... ich denke, du erkennst das Muster.

Dieses Buch ist kein Produkt der Franckh-Kosmos Verlags-GmbH & Co. KG oder der
Sony Music Entertainment Germany GmbH. Es steckt kein Geschäftsmodell dahinter.
Das ist einfach nur ein Buch, das ich schreibe, weil ich es gerne hätte und
niemand anderes es geschrieben hat.

Mitschreiben / Selbst bauen
---------------------------

Dafür brauchst du Folgendes:

* LyX ab Version 2
* Das biblatex-Modul
* Eine LaTeX-Installation
* Eine biber-Installation

Damit du das fertige Dokument erzeugen kannst, musst du momentan leider noch
den Pfad zur Biliographie in den Dateien Hauptdokument.lyx und allbuch.layout anpassen.

Das LyX-Layout
--------------

Das Layout wird in einem "lokalen Format" (mit den Worten von LyX) angepasst:
Die Layout-Datei liegt in dem Verzeichnis, in dem auch das Hauptdokument liegt.
Die LaTeX-Klasse heißt allbuch.sty und die entsprechende Layout-Datei allbuch.layout.

Anpassung des Layouts:

* Datei Dateien/Layouts/allbuch.layout ändern.
* "make install-layout" aufrufen
* In LyX im Menü "reconfigure" aufrufen
