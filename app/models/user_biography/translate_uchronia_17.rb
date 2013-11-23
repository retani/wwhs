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
			
			
			s<<intro
			
			# Text für heute Jugendliche und junge Erwachsene 14 - 20 oder 21 - 28
		
			#Alter bei POD 13 - 19 oder 20 - 27
			
			if heute_teen || heute_twen
				s<<"Bis zum 21.12.2012 verläuft Ihr Leben so, wie sie es kennen."	
					if zuercher
						if neugierig && drogen
							s<<"Am 22.12.2012 erfuhren sie von Freunden, die an der Weltuntergangsparty waren, an der der Anschlag stattgefunden hat, dass sie nach Frankreich fliehen. Sie bleiben aber da."
						elsif musterkind
							s<<"Sie haben erst einen Tag später auf dem Internet vom Terrorattentat der Gruppe Aleph (früher AUN) erfahren und waren erschüttert."
						elsif reich || beliebt || ökonomisch
							s<<"Ihr Freund hat gute Beziehungen in der Zürcher Partyszene. Er hatt die Weltuntergangsparty verlassen, weil jemand ihm den Tipp gegeben hat, so schnell wie möglich zu verschwinden. Er hat sie mit dem Auto abgeholt und ihr seid abgehauen. Weshalb, habt ihr erst später erfahren."				
						elsif künstlerisch || sozial || anpackend
							s<<"Sie haben mit Freunden nach dem  21.12.2012 an einer friedlichen Demo zum Thema 'die Welt geht unter die Abzocker mit ihr' teilgenommen. Ihr wart als Zombies verkleidet und habt das anarchistische Leben in der verstrahlten Stadt eingeläutet."
						else
							s<<"Eine Woche nach dem Anschlag waren die Fische ihres Nachbarn alle tot. Sie riefen ihre Nächsten an und warnten alle vor dem Ernstfall."
						end
					
					else # nicht Zürcher
						if neugierig
							s<<"Seit dem Terroranfall in Zürich, wird ihr Mailaccount mit Verschwörungstheorien zugemüllt. Sie haben angefangen selber Recherchen über die Aleph (früher AUN), die Verantwortlich für den Anschlag sein könnten, anzustellen und fühlen sich nicht mehr sicher."
						elsif rationalistisch
							s<<"Sie nahmen den Terroranschlag mit Humor und dachten, dass wir früher oder später sowieso alle an irgendwelchen Strahlung sterben. Um diesem ewigen Werweissen, ob wir alle nun alle in Terroranschlägen sterben und die Welt mit uns untergeht, aus dem Weg zu gehen, trugen sie damals täglich Kopfhörer." 
						else
							s<<"Sie haben in den Nachrichten über den Terroranfall gelesen. Sie haben umgehend aufgehört Leitungswasser zu trinken."					
						end
					end
			# Heute
					if zuercher
						if zupackend && (drogen|| polyamourös)
							s<<"Heute leben Sie und ihre Freunde in ihrer Traumstadt. Endlich sind sie die reichen Zürcher los haben mehr Platz. Den inoffiziellen neuen Stadtslogan «Zürich: arm und verstrahlt. Das wahre Verwesen» passt zu ihrem neuen Lebensgefühl."
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
							if for_tour
								s<<"Sie haben vom Stadtslogan «Zürich: arm und verstrahlt. Das wahre Verwesen» gehört und sind nach Zürich gereist, um sich im Dolder Grand niederzulassen."
							else
								s<<"Sie haben vom Stadtslogan «Zürich: arm und verstrahlt. Das wahre Verwesen» gehört und planen eine Reise dorthin, um sich endlich mal im Dolder Grand niederzulassen."		
							end
						end
					end
			end
	
			
			# Text für Erwachsene  alter 28 - 49 oder 50 - 60
				
			#Alter bei POD 27 - 48 oder 49 - 59 
	
			if heute_erwachsen || heute_ältere_erwachsene
				s<<"Bis Ende 2012 verläuft Ihr Leben so, wie sie es kennen."
					if zuercher
						if neugierig && esoterisch
							s<<"Nach dem Terroranschlag kamen sie bei einer Krisensitzung in ihrem Quartier in Kontakt mit einer religiösen Vereinigug die behauptete, dass die Endzeittheorie sich bestätigt hätte und die Welt langsam am untergehen sei. Bei ihrer letzten Sitzung, sind sie alle von der Sekte Aleph (früher AUN) entführt worden.
							Heute Leben sie noch immer in der Aleph Zentrale und müssen täglich Untersuchungen anstellen, um die Verseuchung Zürichs zu dosieren und zu analysieren. Zürich ist das Modell, mit dem Aleph Möglichkeiten austestet, wie sie weltweit Angriffe ausüben können. Als deren Arbetiskraft müssen sie oftmals vor Ort in Zürich Wasserproben nehmen." 	
						elsif (ökonomisch || technisch) && rationalistisch
							s<<"Sie Gründeten kurz nach dem Terroranschlag eine Selbsthilfegruppe für paranoid gewordene Zürcher, die den Anschlag in Verbindung mit dem Ende des Maya Kalenders nicht verarbeiten konnten. "	
						elsif stabil || monotheistisch 
							s<<"Nach dem Terroranschlag wurde es Ihnen in Zürich zu ungemütlich. Sie hatten Angst davor, dass die religiöse Gruppe Aleph (früher AUN) zurückkehrt, um ihr Versuchslabor Zürich noch weiter zu malträtieren. Sie zogen vorübergehend zu Verwandten aufs Land."		
						elsif (esoterisch || weltverbesserer) && haus
							s<<"Sie haben kurz nach dem Attentat einen alten Bauernhof auf dem Land gekauft, um auf Selbstversogung umzustellen."
						else
							s<<"Sie haben nach dem Attentat ihre ganze Wohnung mit Wasserflaschen gefüllt und Anweisungen der Behörden abgewartet."
						end
					else
						if  sozial && weltverbesserer
							s<<"Als sie von dem Attentat in Zürich erfahren haben, haben sie Hilfepakete zusammengestellt und an Zürcher Schulen geschickt. Darin befanden sich Beutel mit Trinkwasser und Aufkleber mit der Beschriftung 'shine on!'."
						elsif ökonomisch && weltverbesserer
							s<<"Nach dem Anschlag in Zürich haben sie öffentlich die Behörden aufgerufen Zürich anzuklagen und die die Schweiz zu boykottieren."
						#elsif
						#	if for_tour
						#		s<<"Sie haben vom Stadtslogan «Zürich: arm und verstrahlt. Das wahre Verwesen» gehört und sind nach Zürich gereist, um sich im Dolder Grand niederzulassen."
						#	else
						#		s<<"Sie haben vom Stadtslogan «Zürich: arm und verstrahlt. Das wahre Verwesen» gehört und planen eine Reise dorthin, um sich endlich mal im Dolder Grand niederzulassen."		
						#	end
						elsif (neugierig || konsum) && beliebt
							s<<"Als sie vom Terroranschlag in Zürich erfahren haben, haben sie beim nationalen Fernsehsender angerufen, um vorzuschlagen eine neue Realityshow in Zürich zu konzipieren mit dem Titel: 'Zürich verstrahlt - Liebe und Leid nach der atomaren Katastrophe."
						else
							s<<"So schockierend der Anschlag auch ist – sie nehmen es mit Humor und freuen sich über die sinkenden Preise der Alpenbahnen."
						end	
					end
			
			#(Heute)
					if zuercher
						if (esoterisch || weltverbesserer) && haus
							s<<"Heute Leben sie abseits von Zürich und ihr Hof ist zu einer Art Mekka für verstrahlte ex Junkies geworden, die von ihrem Lebenselexir (sauberes Wasser aus eigenem Brunnen) ein letztes mal trinken wollen. Sie bieten dieses Erlebnis im Tauschhandel an."
						elsif reich || boot || gold
							s<<"Neulich haben sie erfahren, dass auf dem Zürich ein riesiger Sarkophag gebaut werden. Sie wissen, dass sie verstrahlt sind und hatten sich eigentlich darauf gefreut, bis zu ihrem Lebensende auf dem Zürichsee herum zu fahren. Sie sezten alles daran, diese Pläne zu verhindern. "
						elsif stabil || monotheistisch 
							s<<"Heute betreten sie Zürich nur noch mit den neusten hightech Atomschutzanzügen und werden im Niderdorf als Snobs betitelt. Sie meiden deshalb die Innenstadt."
						elsif konsum
							s<<"Heute leben sie als selbsternannter Immobilienmakler und König von 'Atomzürich' ein einsames und gleichzeitig theatralisches Leben. Sie haben etliche Villen ersteigert und führen imaginäre Kundschaft durch ihr Anwesen."
						elsif zupackend 
							s<<"Sie haben seit neustem einen Job als Guide für den Sterbehilfekonzern EXIT. Sie führen suizidale Touristen durch die morbidesten und gleichzeitig historisch interessantesten Stadtteile Zürich. Sie sind zum Experte in Sachen luxuriös - urbane Sterbebetten geworden."
						elsif zupackend && (drogen|| polyamourös)
							s<<"Heute leben Sie und ihre Freunde in ihrer Traumstadt. Endlich sind sie die reichen Zürcher los haben mehr Platz. Den inoffiziellen neuen Stadtslogan «Zürich: arm und verstrahlt. Das wahre Verwesen» passt zu ihrem neuen Lebensgefühl."
						elsif
							s<<"Da Sie eine schönere Bleibe in einer verlassenen Villa finden, vermieten Sie Ihr Haus unter an EXIT. Dort finden nun täglich Sterbe-Parties statt, zu denen vor allen Dingen suizidale Grossstadthipster einfliegen. Niemand weiss vorher, wer die Party überlebt oder wem eine tödliche Dosis im Cocktail verabreicht wird."
						else
							s<<"So schockierend der Anschlag auch ist – sie nehmen es mit Humor und freuen sich über die sinkenden Preise der Alpenbahnen."
						end
					else
						if (drogen || travel_schweiz) && konsum && (gold || haus || boot)
							s<<"Heute hat sich Zürich in eine glamouröse Geisterstadt verwandelt und endlich können sie mit Zürich etwas anfangen. Sie genießen das blühende Nachtleben. Unzählige Restuarants und Cabarets haben in der letzten Zeit in den Ruinen des Niederdorfs eröffnet. Die hedonistische Gourmetkultur ist hier einzigartig."	
						elsif (kind_weissnicht || kompliziert)
							s<<"Sie haben neulich vom Sterbehilfekonzern EXIT erfahren, der in der verstrahlten Stadt das Konzept der legalen Sterbehilfe mithilfe von Umwelteinflüssen entwickelt hat. «Endstation Zürich» finden sie ein sinnvolles Projekt und ermutigen ihren suizidalen Nachbarn dazu, seine letzten Tage wenigstens im Primtower, wo ein neues EXIT Hotel eröffnet wurde, zu verbringen."
						else 
							if for_tour
								s<<"Sie haben vom Stadtslogan «Zürich: arm und verstrahlt. Das wahre Verwesen» gehört und sind nach Zürich gereist, um sich im Dolder Grand niederzulassen."
							else
								s<<"Sie haben vom Stadtslogan «Zürich: arm und verstrahlt. Das wahre Verwesen» gehört und planen eine Reise dorthin, um sich endlich mal im Dolder Grand niederzulassen."		
							end
						end
					end
			end
						
						
						
						
			
			# Text für älteste Generation alter 61+  
			
			#Alter bei POD 60+
			if heut_älteste_generation
				if zuercher
					if sozial && weltverbesserer
						s<<"Als sie von dem Attentat in Zürich erfahren haben, haben sie Hilfepakete zusammengestellt und an Zürcher Schulen geschickt. Darin befanden sich Beutel mit Trinkwasser und Aufkleber mit der Beschriftung 'shine on!'."
					elsif stabil || monotheistisch 
						s<<"Nach dem Terroranschlag wurde es Ihnen in Zürich zu ungemütlich. Sie hatten Angst davor, dass die religiöse Gruppe Aleph (früher AUN) zurückkehrt, um ihr Versuchslabor Zürich noch weiter zu malträtieren. Sie zogen aufs Land."		
					else	
					s<<"Sie haben nach dem Attentat ihre ganze Wohnung mit Wasserflaschen gefüllt und Anweisungen der Behörden abgewartet. Sie wollten Zürich nicht verlassen und liessen sich nicht einschüchtern von diesen modernen Terroristen!"
					end
				else
					if neugierig && sozial
						s<<"Als sie von dem Attentat in Zürich erfahren haben, haben sie Hilfepakete zusammengestellt, um"
					elsif travel_schweiz 
						s<<"So schockierend der Anschlag auch ist – sie nehmen's mit Humor und freuen sich über die sinkenden Preise der Alpenbahnen."	
						
					end
				end
				# Heute
				if zuercher 
					if reich || boot || gold
						s<<"Neulich haben sie erfahren, dass auf dem Zürich ein riesiger Sarkophag gebaut werden. Sie wissen, dass sie verstrahlt sind und hatten sich eigentlich darauf gefreut, bis zu ihrem Lebensende auf dem Zürichsee herum zu fahren. Sie sezten alles daran, diese Pläne zu verhindern. "
					
					elsif künstlerisch
						s<<"Da Sie eine schönere Bleibe in einer verlassenen Villa finden, vermieten Sie Ihr Haus unter an EXIT. Dort finden nun täglich Sterbe-Parties statt, zu denen vor allen Dingen suizidale Grossstadthipster einfliegen. Niemand weiss vorher, wer die Party überlebt oder wem eine tödliche Dosis im Cocktail verabreicht wird."
					else
						s<<"Heute wandern sie oft durch Zürich und geniessen die Natur. Sie ahnen, dass bald alle Pflanzen verwelken werden. Solange bleiben sie noch hier."	
					end
				else
					if ökonomisch && weltverbesserer
						s<<"Nach dem Anschlag in Zürich haben sie öffentlich die Behörden aufgerufen Zürich anzuklagen und die die Schweiz zu boykottieren."
					elsif !beliebt		
						s<<"Heute haben sie einen Brief mit einem Hilferuf der Stiftung 'Atomahilfe Zürich' erhalten, mit der Bitte verstrahlten Kindern anhand von Spenden ein neues Zuhause zu geben."		
					else
						s<<"Sie haben neulich vom Sterbehilfekonzern EXIT erfahren, dass in der verstrahlten Stadt das Konzept der legalen Sterbehilfe mithilfe von Umwelteinflüssen entwickelt wurde. «Endstation Zürich» finden sie ein sinnvolles Projekt und ermutigen ihren suizidalen Nachbarn dazu, seine letzten Tage wenigstens im Primtower, wo ein neues EXIT Hotel eröffnet wurde, zu verbringen."
					end
				end
			end

			
			return concatenate_spacify(s)
		
		end
		
	end
end