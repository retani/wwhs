# encoding: utf-8

class UserBiography
	module Translate_uchronia_17
    extend ActiveSupport::Concern

		def translate_uchronia_17
		
			s = []
			
			# Personenvariablen definieren
				
			
			if self.birthday.year < 1952
				heut_älteste_generation= true
			elsif self.birthday.year < 1963
				heute_ältere_erwachsene = true		
			elsif self.birthday.year < 1985
				heute_erwachsen = true
			elsif self.birthday.year < 1992
				heute_twen = true
			else
				heute_teen  = true
			end
		
			
	
			
			# Text erzeugen
			
			
			
			
			# Text für heute Jugendliche und junge Erwachsene 14 - 20 oder 21 - 28
		
			#Alter bei POD 13 - 19 oder 20 - 27
			
			if heute_teen || heute_twen
				s<<"Bis Ende 2012 verläuft ihr Leben so, wie sie es kennen."	
					if zuercher
						if neugierig && drogen
							s<<"Sie waren am Abend des 21.12.2012 beinahe an die Weltuntergangsparty gegangen, an der der Anschlag stattgefunden hat! Sie sind wegen Prüfungen zuhause geblieben. "
						elsif musterkind
							s<<"Sie warst am 21.12.2012 zu Hause und haen erst am nächsten Tag auf dem Internet vom Terrorattentat der Gruppe Aleph (früher AUN) erfahren."
						elsif reich || beliebt || ökonomisch
							s<<"Sie haben gute Beziehungen in der Zürcher Partyszene. Sie haben die Weltuntergangsparty verlassen, weil jemand ihnen den Tipp gegeben hat, so schnell wie möglich zu verschwinden. Sie haben erst später erfahren weshalb."				
						elsif künstlerisch || sozial || anpackend
							s<<"Sie haben mit Freunden am 21.12.2012 an einer friedlichen Demo zum Thema 'die Welt geht unter und die Abzocker mit ihr' teilgenommen. Ihr wart alle als Zombies verkleidet. Als ein lauter Knall ertönte, habt ihr euch nichts weiter gedacht und  habt die Nacht durchgetanzt."
						else
							s<<"Am 21.12.2012 hatten sie auf der Hardbrücke spät Abends eine heftige Auseinandersetzung mit einer guten Freundin, die behauptete, die Welt würde an dem Tag untergehen. Sie wollten ihr nicht glauben und haben sie ausgelacht, bis eine eigenartige Lichterspiegelung am Himmel in Richtung See zu sehen war. Seither haben sie nie mehr von ihr gehört. "
						end
					
					else # nicht Zürcher
						if neugierig
							s<<"Sie waren am 21.12.2012 den ganzen Abend im Internet und haben sich auf das Schlimmste vorbereitet. Sie sind immer weiter in die Tiefen der Internet - Verschwörungstheorien vorgedrungen und alle möglichen Ereignisse durchdekliniert. Als sie vom Terroranschlag in Zürich erfuhren, waren sie kaum überrascht."
						elsif rationalistisch
							s<<"Ende 2012 haben sie in der Bahn nur noch laut Musik gehört. Dieses ewige Werweissen, ob wir alle nun mit der Welt untergehen oder nicht, hat sie ungemein genervt." 
						else
							s<<"Sie hasben in den Nachrichten über den Terroranfall gelesen. Sie hatten zu dem Zeitpunkt noch nie von der religiösen Vereinigung Aleph (früher AUN) gehört. Sie haben umgehend aufgehört Leitungswasser zu trinken."					
						end
					end
			# Heute
					if zuercher
						if zupackend && (drogen|| polyamourös)
							s<<"Heute leben Sie und ihre Freunde in ihrer Traumstadt. Endlich sind sie die reichen Zürcher los haben mehr Platz. Den inoffiziellen neuen Stadtslogan «Zürich: arm und verstrahlt > Das wahre Verwesen» passt zu ihrem neuen Lebensgefühl."
						elsif sozial || künstlerisch
							s<<"Nach dem Terroranschlag erleben Sie, wie viele Ihrer Freunde die Stadt verlassen. Sie selbst sehen in der Situation ein Chance für einen Neuanfang in Zürich. Am Fusse des Züribergs finden Sie eine leerstehende zurückgelassene Villa, in der sie sich einrichten."
						elsif (chaotisch || neugierig) && (polytheistisch || esoterisch || konsum)
							s<<"Heute kommen sie an Wochenenden zurück in die Stadt und geniessen das blühende Nachtleben der Stadt. Unzählige neue Clubs haben in der letzten Zeit in den Ruinen des Niederdorfs eröffnet. Die Partyszene in Zürich erlebt einen Boom und zieht Partytouristen aus der ganzen Welt an. Aber wohnen, wollen sie hier nicht mehr."
						elsif (chaotisch || neugierig) && (boot || haus || gold)
							s<<"Da Sie eine schönere Bleibe in einer verlassenen Villa finden, vermieten Sie Ihr Haus unter an EXIT. Dort finden nun täglich Sterbe-Parties statt, zu denen vor allen Dingen suizidale Grossstadthipster einfliegen. Niemand weiss vorher, wer die Party überlebt oder wem eine tödliche Dosis im Cocktail verabreicht wird."
						else
							s<<"Nach dem Terroranschlag wird es Ihnen in Zürich zu ungemütlich. Sie haben Angst davor, dass die religiöse Gruppe Aleph (früher AUN) zurückkehrt, um ihr Versuchslabor Zürich noch weiter zu malträtieren. Sie ziehen vorübergehend zu Verwandten aufs Land. Noch immer wundern Sie sich über die genauen Motive des Anschlags und sie vermissen den Zürichsee."		
						end				
					else
						if (drogen || travel_schweiz) && konsum
							s<<"Heute hat sich Zürich in eine glamouröse Geisterstadt verwandelt und endlich können sie mit Zürich etwas anfangen. Sie genießen das blühende Nachtleben. Unzählige neue Clubs haben in der letzten Zeit in den Ruinen des Niederdorfs eröffnet. Die Partyszene in Zürich erlebt einen Boom und zieht Partytouristen, wie sie aus der ganzen Welt an."	
						elsif (kind_weissnicht || kompliziert)
							s<<"Heute haben von Sterbehilfekonzern EXIT erfahren, der in der verstrahlten Stadt das Konzept der legalen Sterbehilfe mithilfe von Umwelteinflüssen entwickelt hat. «Endstation Zürich» finden sie ein sinnvolles Projekt und ermutigen ihren suizidalen Nachbarn dazu, seine letzten Tage wenigstens im Primtower, wo ein neues EXIT Hotel eröffnet wurde, zu verbringen."
						else 
							s<<"Sie haben vom Stadtslogan «Zürich: arm und verstrahlt > Das wahre Verwesen» gehört und planen eine Reise dorthin, um sich endlich mal im Dolder Grand niderzulassen. "		
						end
					end
			end
	
			
			# Text für Erwachsene  alter 28 - 49 oder 50 - 60
				
			#Alter bei POD 27 - 48 oder 49 - 59 
	
			if heute_erwachsen || heute_ältere_erwachsene
				s<<"Bis Ende 2012 verläuft Ihr Leben so, wie sie es kennen."
					if zuercher
						if neugierig && esoterisch
							s<<"Ende 2012 sind sie aus Neugierde kurzerhand Mitglied einer Sekte geworden. Das einzgie was auf der Agenda stand war Endzeithysterie. Sie waren in Kontakt mit verschiedenen reliogiösen Organisationen, die ihre Weltuntergangstheorie teilten. Kurz vor dem 21.10.12. erhielt ihre Führerin einen Brief von der Sekte 'Aleph' (früher AUN) mit der Aufforderung Zürich sofort zu verlassen und unterzutauchen. Sie taten dies auch und kamen in den Bergen unter. Dort warteten Vertreter der Sekte Aleph auf sie, um sie gefangen zu nehemn."	
						elsif (ökonomisch || technisch) && rationalistisch
							s<<"Ganz abgesehen davon, dass sie sowieso nie an den Weltuntergang geglaubt haben, finden sie es doch ganz perfide, dass die Aleph (früher AUN) Sekte sich genau das Ende des Maya Kalenders für ihr Attentat ausgesucht haben. Sie Gründen kurz nach dem Anschlag eine Selbsthilfegruppe, für paranoid gewordene Zürcher."
						elsif esoterisch || weltverbesserer
							s<<"Sie haben kurz vor dem Attentat einen alten Bauernhof am Stadtrand gekauft, um auf Selbstversogung umzustellen."
						end
					end
			
			# Heute
					if zuercher
						if neugierig && esoterisch
							s<<"Heute Leben sie noch immer in der Aleph Zentrale und müssen täglich Untersuchungen anstellen, um Verseuchung Zürichs zu dosieren und analysieren. Zürich ist das Modell, mit dem Aleph Möglichkeiten austestet, wie sie weltweit Angriffe ausüben können. Ihre Sekte wurde zu deren Arbeitskräfte und sie müssen oftmals vor Ort in Zürich Proben des Wassers nehmen.  "
						elsif technisch && (haus || boot || gold)
							s<<"Neulich haben sie erfahren, dass auf dem Zürich ein riesiger Sarkophag gebaut werden. Sie wissen, dass sie verstrahlt sind und hatten sich eigentlich darauf gefreut, bis zu ihrem Lebensende auf dem Zürichsee herum zu fahren. Sie sezten alles daran, diese Pläne zu verhindern. "
						else
							s<<""
						end
					else
						# Folgende Zeile mit Alpenbahnen nur zur Füllung, um leere Bios zu vermeiden!
						s<<"So schockierend der Anschlag auch ist – sie nehmen's mit Humor und freuen sich über die sinkenden Preise der Alpenbahnen."
					end
			end
						
			if heut_älteste_generation
				# Folgende Zeile mit Alpenbahnen nur zur Füllung, um leere Bios zu vermeiden!
				s<<"So schockierend der Anschlag auch ist – sie nehmen's mit Humor und freuen sich über die sinkenden Preise der Alpenbahnen."
			end
			
			
			
			
			
			
			
		
			
			# Heute
			
			
			
			
			# Text für Erwachsene
		
			# Kindheit
			
			# Heute
			
			return concatenate_spacify(s)
		
		end
		
	end
end