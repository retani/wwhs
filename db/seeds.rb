#encoding: utf-8 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago', name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Page.destroy_all

Page.create([{ title: "termine" , content: "

	<h2>Die Wanderungen</h2>
	
	Tour 1: 9.11.2013 -> Tickets <br>
	Tour 2: 10.11.2013 -> Tickets <br>
	<br>
	Tour 3: 16.11.2013 -> Tickets <br>
	Tour 4: 17.11.2013 -> Tickets <br>
	<br>
	Tour 5: 23.11.2013 -> Tickets <br>
	Tour 6: 24.11.2013 -> Tickets <br>
	<br>
	Tour 7: 30.11.2013 -> Tickets <br>
	Tour 8: 01.12.2013 -> Tickets <br>
	<br>

" }])

Page.create([{ title: "trailer" , content: '

<iframe width="500" height="375" src="//www.youtube.com/embed/nBotEgWjZJw" frameborder="0" allowfullscreen></iframe>

' }])


Page.create([{ title: "startpunkt", content: '

	<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?t=m&amp;ie=UTF8&amp;ll=47.392434,8.495366&amp;spn=0.036316,0.06609&amp;z=14&amp;output=embed"></iframe><br /><small><a href="https://www.google.com/maps?t=m&amp;ie=UTF8&amp;ll=47.392434,8.495366&amp;spn=0.036316,0.06609&amp;z=14&amp;source=embed" style="color:#0000FF;text-align:left">Größere Kartenansicht</a></small>

' }])

Page.create([{ title: "hinweise", content: "

	<h2>Praktische Hinweise Übernachtungsgäste</h2>
	<p>
	Start: Vorabend der Morgenwanderung um 22:00 bei der Zivilschutzanlage, Hirzelstrasse 11, 8004 Zürich. 
	Ausrüstung: Wir bitten Sie nach Möglichkeit einen eigenen Schlafsack mitzubringen. Wolldecken und Kissen sind vorhanden. Für die Morgenwanderung werden gutes Schuhwerk sowie warme und wetterfeste Kleidung empfohlen. 
	Tageskarte der ZVV Zone 110 ist inklusive. 
	Verpflegung: kleines Frühstück und Wegproviant inklusive 
	Sicherheit: Versicherung ist Sache der Teilnehmenden.
	Ziel: Die Vorstellung endet am nächsten Tag um ca. 11 Uhr. 
	
	Praktische Hinweise Tourgäste
	Start: 6:30 bei der Zivilschutzanlage, Hirzelstrasse 11, 8004 Zürich. 
	Ausrüstung: Für die Morgenwanderung werden gutes Schuhwerk sowie warme und wetterfeste Kleidung empfohlen. Tageskarte der ZVV Zone 110 ist inklusive.  
	Verpflegung: Wegproviant inklusive 
	Sicherheit: Versicherung ist Sache der Teilnehmenden.
	Ziel: Die Vorstellung endet um ca. 11 Uhr. 
	</p>

" }])

Page.create([{ title: "credits", content: "

	<h2>Credits</h2>
	
	<dl>
		<dt>
			Konzept, Game-Design, Regie: 
		</dt>
		<dd>
			Invisible Playground (Jennifer Aksu, Viktor Bedö, Daniel Boy, Josa Gerhard, Anna Hentschel, Christiane Hütter, Sebastian Quack)
		</dd>
		Musik: Ruedi Häusermann
		Produktionsleitung: Nadine Tobler
		Regieassistenz: Julia Znoj
		Mitarbeit Recherche und Game-Design: Maike Thies
		Video: Asia Dér
		Programmierung: Holger Heissmeyer
		Assistenz Video: Grazia Swea Sardone
		Performance: Marcel Grissmer
		Graphic Design: Paco Savio
		Technik: 
	</dl>
	
	<p>
	Eine Produktion von Invisible Playground in Kooperation mit Gessnerallee Zürich
	Gefördert durch Stadt Zürich Kultur und Fondation Nestlé pour l’Art
	</p>
	
	<p>
	Vielen Dank an das Team der Gessnerallee, alle Uchronisten und Zürcher Experten!
	</p>

" }])

Page.create([{ title: "society", content: "

	<h2>Die Society</h2>
	<p>
	U.R.S. ist eine Plattform die alternative Welten /Möglichkeiten versammelt. Ziel der U.R.S. ist es, Uchronien zu erforschen und für alle zugänglich zu machen. Die erste Tour der U.R.S. ist WIR WÜRDEN HIER SEIN in Zürich. 
	</p>
	<p>
	Die Uchronic Research Society besteht aus Uchronisten. Uchronisten sind bekannte und unbekannte Spezialisten, sie sind Experten im Gestalten von Welten und arbeiten an möglichen Zukünften. 
	</p>
	
" }])

Page.create([{ title: "manifest", content: "

	<h2>Das Manifest</h2>
	<p>
	Zürich hat nicht nur eine Gegenwart, sondern viele.
	Zürich hat nicht nur eine Geschichte, sondern viele.
	Wir können die Zukunft jeder Uchronie beeinflussen, indem wir ihre Gegenwart verändern. 
	Wir können die Zukunft unserer Gegenwart verändern, in dem wir unsere Gegenwart verändern.
	Jede Entscheidung zieht als Konsequenz eine Uchronie nach sich und lässt andere zurück. Jede Entscheidung könnte auch anders verlaufen
	Indem wir Uchronien erforschen schaffen wir Bewustsein für alternative Möglichkeiten von Geschichte.
	Werte der U.R.S. sind: 
	Sorgfalt, Gelassenheit, Toleranz, Offenheit ,Vorsicht, Präzision, Qualität, Nachsicht
	</p>

" }])

Page.create([{ title: "uchronien", content: "

	<h2>Die Uchronien</h2>
	
	<p>
	Uchronien sind spielbare Varianten von Geschichte, die zu neuen Gegenwarten führen. Uchronien hängen untereinander nicht zusammen, sondern stehen parallel zueinander als Welten in einem Multiversum. Zürich hat nicht nur eine Gegenwart, sondern viele. In jedem Moment kann sich eine alternative Geschichte abspalten - eine Uchronie.
	</p>
	<p>
	Der Point of Divergence (Deutsch: Moment der Abweichung) markiert den am frühesten feststellbaren Punkt, an dem sich ein alternativer Wege vom Normal-Jetzt abspaltet: eine Uchronie entsteht! 
	</p>
	<p>
	Die Uchronische Differenz beschreibt den Faktor der Abweichung der Uchronie vom Normal-Jetzt. 
	</p>
	<p>
	Es gibt in Zürich unzählige noch unerforschte Uchronien. An besonderen Tagen am frühen Morgen ist es möglich, Uchronien zu betreten und ihre Zukunft zu beeinflussen, indem man ihre Gegenwart verändern. 
	</p>

" }])

Page.create([{ title: "regeln", content: "

	<h2>Verhaltensregeln beim Betreten von Uchronien</h2>

	<ul>
		<li>
			Uchronien können nur gemeinsam betreten werden.
		</li>
		<li>
			<li>
				Auf keinen Fall den Aufenthalt in einer Uchronie (oder Personenen, Gegenstände darin) für egoistische Motive missbrauchen
			</li>
			<li>
				In jeder Uchronie gelten andere Regeln, Gesetze. Respektiere sie!
			</li>
		</li>
		<li>
			Achtung: dein Körper bleibt weiterhin im Normal-Jetzt (ist Verwundbar)
		</li>
		<li>
			Achtung: dein Verhalten in einer Uchronie ist für Passanten im Normal-Jetzt sichtbar
		</li>
		<li>
			Achtung: Betreten der Uchronie verändert dich auch im Normal-Jetzt
		</li>
		<li>		
			Es ist gefährlich, unterschiedliche Uchronien zu vermischen.
		</li>
		<li>
		( - größere Eingriffe in eine Uchronie dürfen nur mit Zustimmung des U.R.S. controlling boards durchgeführt werden)
		</li>
	</ul>

" }])

Uchronist.destroy_all

Uchronist.create(name: "Uchronist 1", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 2", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 3", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 4", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 5", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 6", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 7", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 8", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 9", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 10", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 10", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 11", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 12", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 13", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 14", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')
Uchronist.create(name: "Uchronist 15", 
	description: '<b>"Man sollte sich auf genau eine Entwicklung konzentrieren."</b><br/><br/>
<b>Im Alltag:</b> Architektur, Comics<br/><br/>
<b>Spezialist für:</b> Nah-Tod-Erfahrungen, spekulative Finanzprodukte<br/><br/>
<b>Untersucht die Uchronien:</b> #44, #23')








Uchronia.destroy_all

Uchronia.create(title: "Uchronie 1", 
	pod: "pod",
	description: "description")
Uchronia.create(title: "Uchronie 2", 
	pod: "pod",
	description: "description")
Uchronia.create(title: "Uchronie 3", 
	pod: "pod",
	description: "description")
Uchronia.create(title: "Uchronie 4", 
	pod: "pod",
	description: "description")
Uchronia.create(title: "Uchronie 5", 
	pod: "pod",
	description: "description")
Uchronia.create(title: "Uchronie 6", 
	pod: "pod",
	description: "description")

