# encoding: utf-8

class UserBiography
	module Translate_uchronia_11
    extend ActiveSupport::Concern

		def translate_uchronia_11
		
			s = []
			
			s<<" "
			
			# Bangladesch
			# POD 1947
			# 1950 Aufnahme von Handelsbeziehungen
			# 1970 Beginnende Präsenz im Stadtbild *damals*
			
			# Verwendung:
			# Kiosk
			
			# Bemerkungen:
			
			# Nötige Elemente
			# ?

			if self.birthday.year < 1943		
				heute_rentner = true			# heute über 70, damals über 27
			elsif self.birthday.year < 1976		
				heute_ältere_erwachsene = true	# heute 37-69, damals -6 - 26
			elsif self.birthday.year < 1984		
				heute_erwachsen = true			# heute 29-36
			elsif self.birthday.year < 1994		
				heute_twen = true				# heute 19-28
			else								
				heute_teen  = true				# heute 14-18
			end		
			
			
			s << "Sie werden im Jahr " + self.birthday.year.to_s + " geboren."

			if heute_teen
			
				#jugend
				if beliebt || parents_weissnicht
					s<<"Zum Tag der Muttersprache " + (self.birthday.year+3).to_s + " probieren Sie ihren ersten Samosa und spucken ihn direkt wieder aus, ihrem Vater vor die Füsse. "
				elsif reich && künstlerisch
					s<<"Angezogen von der Schönheit der bengalischen Schrift, fangen Sie schon als Kind an, diese Zeichen zu lernen."
				elsif männlich
					#Baki, Jamuna
					s<<"In der Grundschule freunden Sie sich mit Baki an – ihr erster Kontakt zur bengalischen Kultur."
				else
					s<<"In der Grundschule freunden Sie sich mit Jamuna an – ihr erster Kontakt zur bengalischen Kultur."
				end
				
				#beruf/privat
				
				#grund für praktikum
					s<<"Ein Praktikum in einem Bengalischen Kiosk würde im Lebenslauf einen guten Eindruck machen."
			
			end
			
			if heute_twen
			
				# kindheit / jugend
				if beliebt || parents_weissnicht
					s<<"Zum Tag der Muttersprache " + (self.birthday.year+3).to_s + " probieren Sie Ihren ersten Samosa und spucken ihn direkt wieder aus, ihrem Vater vor die Füsse. "
				elsif reich && künstlerisch
					s<<"Angezogen von der Schönheit der bengalischen Schrift, fangen Sie schon als Kind an, diese Zeichen zu lernen."
				elsif männlich
					#Baki, Jamuna
					s<<"In der Grundschule freunden Sie sich mit Baki an – ihr erster Kontakt zur bengalischen Kultur."
				else
					s<<"In der Grundschule freunden Sie sich mit Jamuna an – ihr erster Kontakt zur bengalischen Kultur."
				end
				
				# ausbildung
				if sozial
					s<<"Während Ihrer Ausbildung erfahren Sie viel über die Selbstorganisation in Bengalischen Familienstrukturen."
				elsif künstlerisch
					s<<"Sie diskutieren mit Ihren Freunden über die Swissbengalische Kunstbewegung, und spielen mit dem Gedanken eines Aufbaustudiums an der Dhaka-Kunstuniversität."
				elsif technisch
					s<<"Mit Ihren Bengalischen Kollegen kommen Sie gut zurecht, und Ihnen gefällt der berühmte Bengalische Pragmatismus."
				elsif ökonomisch
					s<<"Vor kurzem haben Sie «Management Bengali style» gelesen. Das vieldiskutierte Buch untersucht die Erfolgsfaktoren Bengalischer Firmen: Pragmatismus, intelligentes Networking und Umtriebigkeit."
				elsif keine
					s<<"Von einem guten Kontakt zur Bengalischen Community erhoffen Sie sich berufliche und finanzielle Vorteile."
				elsif education_weissnicht
					s<<"Egal in welchem Beruf, und auch privat: Bengalisch ist immer nützlich."
				end
				
			end
			
			if heute_erwachsen || heute_ältere_erwachsene
			
				# kindheit / jugend
				if beliebt && !neugierig
					s<<"Als Kind spielen Sie, inspiriert von einer Bengalischen Fernsehserie, eine Zeit lang Cricket."
				elsif reich && künstlerisch
					s<<"Angezogen von der Schönheit der bengalischen Schrift, fangen Sie schon als Kind an, diese Zeichen zu lernen."
				elsif neugierig
					s<<"In der Grundschule freunden Sie sich mit Abdus, dem Sohn eines Bengalischen"
					if rand(2) == 1
						s<<"Intellektuellen"
					else
						s<<"Industriellen"
					end
					s<<"an, und lernen seine Familie kennen."
				else
					s<<"Als Kind wundern sie sich über die fremde Sprache, die immer öfter in Menschenmengen, besonders am Central zu hören ist."
				end
				
				# privat/beruf
				if sozial
					s<<"Sie beschäftigen sich viel mit der bengalischen Netzwerkkultur. Vor 2 Jahren haben Sie eine Weiterbildung im Bengalizentrum besucht. Das rote Gebäude kennen Sie aus dem EFF EFF."
				elsif travel_asien
					s<<"Während Ihrer Asienreise verbringen Sie die meiste Zeit in Bengalen, um möglichst viel von den beispielhaften autarken Dörfern mitzubekommen, die Sie aus Erzählungen kennen."
				elsif ökonomisch
					s<<"Seit Sie in Ihrem Beruf die bengalische Höflichkeit anwenden, sind sie sehr erfolgreich."
				elsif keine
					s<<"In der Schule entscheiden Sie sich für Englisch anstatt für Bengalisch. Heute bereuen Sie dies."
				elsif einwohner
					s<<"2010 besuchen Sie die Ausstellung Happy@60 zur Feier des 60 jährigen Bestehens der bilateralen Beziehungen und wundern sich über die holprige Bengalische Aussprache von Bundesrätin Micheline Calmy-Rey."
				else
					s<<"Jedes Jahr am 21. Februar feiern Sie mit Ihren Freunden den Tag der Muttersprache und sprechen an diesem Tag nur Bengalisch."
				end

			end
			
			if heute_ältere_erwachsene
			
			end
			
			if heute_rentner
			
			end
			
			
			if for_tour
			
				place = place_in_tour('updated_at ASC')
			
				s << "Als der Praktikumsplatz ausgeschrieben wird, reagieren Sie schnell und ergattern den " + (place + 1 ).to_s + ". Platz in der Schlange."

				s << "Ein paar Phrasen haben Sie schon gelernt:"
				
				p = place
				if p > 15 
					p = 12 + (p % 5)
				end

					s<<"
					"	
				if p == 0
					s<<"
DHORJA = Tür
PAHARA DAO = beobachten 
EKJHON KORE = nur eine Person
"
				elsif p == 1
				s<<"
SHOBEI KE = Gäste 
CHA = Tee 
"
				elsif p == 2
				s<<"
PANEO = Getränke
SORITA RAKO = wegräumen
"
				elsif p == 3
				s<<"
JANALA = Fenster 
BHAIER = außen
"

				elsif p == 4
				s<<"
Mir geht es gut. = AMI VALO ASCHI
Mir geht es o.k. =  AMI MOTA MUTI VALO ASCHI
"
				elsif p == 5
				s<<"
JANALA = Fenster
VITORER = innen
"
				elsif p == 6
				s<<"
ZHARU DAO = fegen
"
				elsif p == 7
				s<<"
Mir geht es gut. = AMI VALO ASCHI
Mir geht es o.k. =  AMI MOTA MUTI VALO ASCHI
"
				elsif p == 8
				s<<"
KHABEN = essen
Nein, danke. = NA, DONOBAD.
Ja, gerne. = ZI, DONOBAD.
"
				elsif p == 9
				s<<"
KORBEN = trinken
Nein, danke. = NA, DONOBAD.
Ja, gerne. = ZI, DONOBAD.
"

				elsif p == 10
				s<<"
GHUSIA RAKO = auffüllen
"
				elsif p == 11
				s<<"
SHOBEI KE = Gäste 
CHA = Tee 
"
				elsif p == 12
				s<<"
KHABEN = essen
Nein, danke. – NA, DONOBAD.
Ja, gerne. – ZI, DONOBAD.
"
				elsif p == 13
				s<<"
Mir geht es gut. – AMI VALO ASCHI
Mir geht es o.k. -  AMI MOTA MUTI VALO ASCHI
"

				elsif p == 14
				s<<"
KHABEN = essen
Nein, danke. = NA, DONOBAD.
Ja, gerne. = ZI, DONOBAD.
"

	elsif p == 15
				s<<"
KORBEN = trinken
Nein, danke. – NA, DONOBAD.
Ja, gerne. – ZI, DONOBAD.
"
				end
												
			end
			
			return concatenate_spacify(s)
		
		end
		
	end
end