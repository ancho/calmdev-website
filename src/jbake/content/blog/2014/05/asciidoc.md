title=asciidoctor
date=2014-05-04
type=post
tags=asciidoc
status=draft
~~~~~~

Ich suche im Moment nach einem geeignetem Tool, um kollaborativ Dokumentation für ein Projekt zu schreiben.

Von [asciidoctor][] habe ich jetzt schon mehrfach gelesen. Und da es ein [Plugin][] für gradle gibt, kommt es für mich in eine nähere Auswahl für eine Betrachtung.

## Anforderungen

* ***einfache Syntax***
  
  [markdown](http://daringfireball.net/projects/markdown/) ähnliche Sprachen sind den meisten Programmierern mittlerweile 
  geläufig.
  Die Einarbeitungsszeit sollte damit so minimal wie möglich sein. Damit 
  man sich auf das Wesentliche konzentrieren kann.
  
* ***gute Dokumentation***

  Für alle anderen Fälle sollte die Dokumentation einfach und übersichtlich 
  sein.
  
* ***einfache Integration***

  Ich möchte mit wenigen Befehlen möglichst viel erreichen.
  Am Besten mit einem einfachen gradle Befehl das Projekt testen, doku 
  erstellen und zusammenpacken. Das wäre Toll. Wenn es dann noch möglich ist 
  einzelne Fetzen von Code aus meinen Quellen direkt in die Dokumentation zu 
  übernehmen wäre das Optimal.
  
  Dabei sollte es Java und Groovy unterstützen.

  [ Für Python gibt es ein sehr ähnliches [Projekt](http://sphinx-doc.org/). 
    Wenn es nicht sogar die Vorlage war. ]
    
* ***einfache Installation***

  Am Liebsten ist mir ein `aptitude install asciidoctor` :)
  Aber auch Windows- und Mac-User sollten eine einfache Möglichkeit haben 
  die Software zu installieren.
  
* ***minimum an Ausgabeformaten***
  - html
  - pdf

## Links
* [asciidoctor homepage][asciidoctor]
* [asciidoctor gradle plugin][Plugin]
* [David Allen über asciidoc](https://plus.google.com/114112334290393746697/posts/CdXJt6hVn5A)

[asciidoctor]: http://asciidoctor.org
[Plugin]: https://github.com/asciidoctor/asciidoctor-gradle-plugin