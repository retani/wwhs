# encoding: utf-8

class UserBiography
	module Translate_uchronia_61
    extend ActiveSupport::Concern

		def translate_uchronia_61
		
			s = []
			# Personenvariablen definieren
				
			@Gründer = self.birthday.year >= 1950 \
			&& self.birthday.year <= 1970 \
			&& (chaotisch || neugierig) \
			&& zuercher \
			&& !@Profiteur \
			&& !@Unpolitisch
			
			@Gegnerhistorisch = self.birthday.year >= 1950 \
			&&  self.birthday.year <= 1970 \
			&& musterkind \
			&& zuercher \
			&& !@Profiteur \
			&& !@Unpolitisch
			
			
		
			@Mitmacher = self.birthday.year > 1970 \
			&& (chaotisch || neugierig) \
			|| weltverbesserer
			
			@Aktivist = @Mitmacher && zuercher 
			
			@Sympathisant = @Mitmacher && !drogen
			
			@Besucher = @Mitmacher && !zuercher
			
			
			@Gegnerheute = self.birthday.year > 1970 \
			&& musterkind \
			|| !weltverbesserer \
			|| haus || gold \
			&& !@Mitmacher
	
	
			@Unpolitisch = kind_weissnicht \
			|| konsum \
			&& !@Mitmacher
			
			
			@Profiteur = neugierig \
			|| beliebt
			
		
			logger.info "Mitmacher " if @Mitmacher
			logger.info "Aktivist " if @Aktivist
			logger.info "Besucher " if @Besucher
			logger.info "Gegnerheute " if @Gegnerheute
			logger.info "Unpolitisch " if @Unpolitisch
			logger.info "Profiteur " if @Profiteur
			logger.info "Gründer " if @Gründer
			logger.info "Gegnerhistorisch " if @Gegnerhistorisch
			
	
			
			if self.birthday.year < 1952
				heut_elterngeneration = true
			elsif self.birthday.year < 1963
				heute_gründergeneration = true		
			elsif self.birthday.year < 1985
				heute_erwachsen = true
			elsif self.birthday.year < 1992
				heute_twen = true
			else
				heute_teen  = true
			end
	
			# Text erzeugen
			
			
			
			
			# Text für heute Jugendliche Alter heute 14 - 21
		
			if heute_teen 
				# Kindheit Alter bei POD min-15
				if zuercher 
					if esoterisch 
						s<<"Du lebst im Freistaat und hast die autonome Platzspitz Grundschule besucht."
					else 
						s<<"Als Kind hattest du mal einen Freund aus dem Freistaat, den du 'Spitzli' genannt hast."
					end
				else #Nicht Zürcher
					if chaotisch
						s<<"Du hast von deinen Eltern schon früh Geschichten über den Freistaat gehört."
					else
						s<<"Als Kind wusstest du kaum etwas über die Geschichte des Freistaats."
					end
				end
				# Heute
				if zuercher 
					if !esoterisch && (drogen || neugierig || künstlerisch || ökonomisch)
						s<<"Heute verbringst du heimlich Zeit im Freistaat und hast vor einiger Zeit deine erste Drogenerfahrungen gemacht."
					elsif esoterisch && beliebt
						s<<"Heute grenzt dich von nicht Freistaatlern ab und planst dort zu bleiben."
					elsif esoterisch 
						s<<"Mittlerweile findest du das Leben im Freistaat du beengend."
					else 
						s<<"Heute findest den Freistaat chaotisch und hast nicht genug Mut, um den Freistaat zu betreten."
					end
				else #Nicht Zürcher
					if drogen || neugierig || künstlerisch
						s<<"Bisher haben dich deine Eltern vor dem Besuch im Freistaates gewarnt, natürlich bist du letztens trotzdem mit deinen Freunden hingegangen."
					else				
						s<<"Der Freistaat ist dir heute ziemlich fremd und du hast momentan kein Interesse daran, diese Welt zu erkunden. "
					end
				end
			end
			
			
			
			
			# Text für junge Erwachsene Alter heute: 21 - 27 
		
			if heute_twen
				#Kindheit Alter bei POD min -8
				if zuercher 
					if esoterisch || chaotisch
						s<<"Ihre Eltern sind kurz nach der Okkupation des Platzspitzes dorthin gezogen. Sie sind ein Kind der zweiten Platzspitz Generation. "
					else 
						s<<"Sie sind nach den grossen Unruhen und der Zersplitterung der Stadt geboren. Ihre Eltern haben sie stets vor den Gefahren der Gegend um den Platzspitz gewarnt. "		
					end
				else #Nicht Zürcher
					if  chaotisch || unberechenbar
						s<<"Ihre Eltern haben sie als Kleinkind mitgenommen, als sie Freunde im Freistaat besucht haben. "
					else
						s<<"Sie haben erst spät von den Konflikten der Zürcher Bevölkerung erfahren, als einmal ein Platzspitzer Freistaatler in dein Stadt kam, um seine ideologischen Ideen zu verbreiten."
						
					end
				end
				# Heute 
				if zuercher 
					if esoterisch && künstlerisch && (travel_europa || travel_südamerika || travel_nordamerika || travel_asien || travel_afrika || travel_antarktis )
						s<<"Nach Ihrer Ausbildung sind sie viel in der Welt umhergekommen und haben verschiedene Formen von autonomen Lebensformen kennengelernt. Wenn sie in Zürich sind, setzen sie sich künstlerisch stark mit den strukturellen Bedingungen ihres Heimatstaats Platzspitz auseinander. "
					elsif !weltverbesserer && drogen
						s<< "Sie ziehen in Erwägung, einen Teil ihres Vermögens in Platzspitzaktien anzulegen, um vom geplanten Börsengang des Platzspitz profitieren zu können." 
					elsif drogen
						s<< "Heutzutage dient Ihnen der Freistaat hauptsächlich als Ort, um hin und wieder Drogen zu besorgen." 
					elsif weltverbesserer && (technisch || ökonomisch)
						s<<"In Ihrem Job im Bauamt müssen Sie die wegen der Bodebeschaffenheit bestehende Sturzgefahr der Hochhäuser am Bellevue herunterspielen."
					else
						s<<"Heute arbeiten sie ab und zu an der Garderobe im Luxusclub 'UBSEX'. Sie sind nur dort wegen des guten Stundenlohns. Die Gegensätze der Stadt sind dort stark spürbar. Letztens sind sie zum Ausgleich auf den Üetliberg gewandert und haben über die dunkle Stadt geblickt."
					end
				else #Nicht Zürcher
					if künstlerisch || sozial 
						s<<"Das harte Vorgehen der Behörden haben sie öffentlich kritisiert und die Entwicklung des Freistaates mit Interesse verfolgt."
					elsif travel_schweiz 
						s<<"Mitlerweile haben sie schon mehrmals eine Direktreise zum Platzspitz gebucht."
					elsif beliebt || rationalistisch || gold
						s<<"Auf dem Weg zum Zürcher Hauptbahnhof wurden sie von Mitgliedern einer mafiösen Organisation überfallen. Ihnen ist nichts drastisches passiert, aber sie verstehen seither umso weniger, weshalb nicht mehr unternommen wird, um den Freistaat aufzulösen."
					else
						s<<"Heute leben sie in Zürich. Sie gehören zu den Zuzüglern, die auf der Warteliste für die doppelte Staastbürgerschaft stehen. Sie haben beim Sptitzlifestival eien neue Liebe gefunden und denken, dass sie den Pass über Kontakte illegal erwerben können."
					end
				end 
			end
		
		
			# Text für Erwachsene Alter heute: 28 - 49
				
			#Kindheit alter bei POD 1-20
			if heute_erwachsen
				if zuercher
					if esoterisch || chaotisch
						s<<"Ihre Eltern waren Aktivisten der ersten Stunde und sind mit ihnen als Kleinkind in ein selbstgebautes Haus im neuen Freistaat gezogen." 
					elsif kind_weissnicht || arm
						s<<"Sie können sich kaum an den Alltag während den politischen Unruhen erinnern. Alles woran sie sich erinnern können ist, dass sie lange bei ihren Nachbarrn untergebracht waren."
					elsif !beliebt || abwartend
						s<<"Sie sind an der Grenze zum Freistaat aufgewachsen. Sie haben viel von den brutalen Auseinandersetzung miterlebt und haben vom Küchenfenster aus oft Drogendealer beobachtet."
					else 
						s<<"Ihre Kindheit verlief gemäss ihren Erinnerungen. Die Jugendunruhen zu Beginn der 80er Jahre haben ihre Sicht auf Zürich beeinflusst." 	
					end	
				else #Nicht Zürcher
					if zupackend && weltverbesserer
						s<<"Sie haben im jungen Alter oft davon geträumt, endlich in den Freistaat ziehen zu können. Sie hatten einen Brieffreund, der ihnen Bilder von dem mysteriösen Ort schickte." 
					elsif neugierig || parents_weissnicht || rationalistisch || ökonomisch
						s<<"Sie haben früh über Medien und Bilder Information zum Freistaat eingeholt und waren fasziniert von dem Geschehen."
					elsif chaotisch || kind_weissnicht
						s<<"Sie waren in ihrer Jugend wenig interessiert an der Aussenwelt. Was bei ihnen vor Ort passierte war brisanter. "
					else
						s<<"Sie verstanden als Kind überhaupt nicht, was das Ganze mit der freien Liebe, den Drogen und den utopischen Ideen auf sich hatte."
					end	
				end
				
					
				#Heute 						
					if zuercher	
						if esoterisch && (künstlerisch || sozial)
							s<<"Seit einigen Jahren arbeiten sie auf dem Platzspitz im Kunst- und Kulturhaus 'Plaztart', dessen Zielsetzung es ist, Jugendlichen und Erwachsenen einen Ort zur Verfügung zu stellen, in dem sie aus dem Drogenmilieu heraustreten können."
						#Profiteur
						elsif haus && künstlerisch 
							s<<"Heute sind dank dem Abstimmungsergebnis reich, da sie ein Architekturbüro geerbt haben, welches sich auf die Aufstockung von Häusern spezialisiert hat." 
						elsif künstlerisch && (konsum || polyamourös || zupackend )
							s<<"Inzwischen haben sie sich auf den Unterhaltungssektor innerhalb des Freistaatstourismus spezilisiert und nehmen die BesucherInnen geschickt aus." 	
						#Unpolitisch 
						elsif (haus || gold) && (reich || kind_weissnicht)
							s<<"Heute leben sie im 45. Stock einer Wohnung am Central. Von ihrem Balkon aus sehen sie direkt auf den Freistaat. Sie fühlen sich nach dem Umbau ihres Hauses sicherer."	
						elsif sozial 
							s<<"Sie unterstützen als idealistischen Verfechter des Freistaats Werbekampagnen, die weltweit das Image des Staats zu verbessern versuchen. " 
						elsif drogen
							s<<"Heute arbeiten sie ausserhalb des Freistaats in einem geheimen Drogenumschlagplatz, um sich vor mafiösen Organisationen zu schützen." 
						else
							s<<"Heute halten sie sich eher am Stadtrand auf. Ab und an besuchen sie das Kunst und Kulturzentrum 'Platzart' im Freistaat, um ihre alten 'Spitzli' Freunde zu treffen." 
						end
						
					else #Nicht Zürcher
			
						if neugierig && (technisch || ökonomisch) 
							s<<"Neulich haben sie bei der Entwicklung einer Applikation teilgenommen, die als sicheres Kommunikationsmittel für den Drogenhandel zwischen den Freistaatlern und der Aussenwelt dient."
						elsif travel_schweiz	
							s<<"Mitlerweile haben sie schon mehrmals eine Direktreise zum Platzspitz gebucht. Jedesmal ist es für sie ein neues Erlebnis und sie können für ein paar Tage ihren Alltag vergessen."
						elsif (gold || polyamourös) & konsum && travel_asien
							s<<"Sie sind durch den Freistaat reich geworden. Sie haben ein Reisebüro eröffnet und bieten Sex und Drogentourismus an."
						else
							s<<"Heute verfolgen sie die bekannte Bloggerin 'seedZZ', die über den Platzspitzer Gemeinschaftsgarten bloggt. Auf 'Spacecarrot - Spitzli geht Bio' können sie alle Updates der gespickten Gemüseküche nachlesen."
						end
					end	
	
			end
		
	
	
			
			# Text für ältere Erwachsene (Gründer) Alter heute:  50 - 60
			
			#(zürich verlassen)
					
				#Kindheit alter bei POD 21 - 31 
				if heute_gründergeneration
					if zuercher
						if chaotisch && zupackend
							s<<"Als sie vom Vorhaben der UBS erfahren hatten, verstanden sie und ihre Freunde die Welt nicht mehr. Für sie war klar, dass hier nur radikale Massnahmen zur Verhinderung dieses monströsen Schandflecks beitragen könnten. Sie gingen auf die Barikaden, doch der Erfolg den ihr dadurch erziehlt hattet, ging nicht spurlos an ihnen vorbei."
						elsif chaotisch || esoterisch || künstlerisch
							s<<"Sie waren an der Gründung des Freistaates beteiligt und haben aus fester Überzeugung die doppelte Staatsbürgerschaft angenommen."
						elsif musterkind || stabil || kind_weissnicht 
							s<<"Während den Massendemonstrationen haben sie sich in der Bibliothek und Zuhause ihren Studien gewidmet. Der Druck zum Mitmachen war sehr unangenehm für sie. "
						elsif (beliebt || reich) && monotheistisch
							s<<"Sie traten wegen ihres besten Freundes einer religiösen Vereinigung bei, die sich gegen die Besetzerszene stellte. Als der Drogenhandel florierte, hatte ihre Gruppe grossen Zulauf und sie fühlten sich in ihrem Anliegen, den Platzspitz zu beseitigen, bestätigt."
						elsif konsum || ökonomisch
							s<<"Anfang 80er Jahre haben sie eine Anstellung bei der UBS bekommen. Gleich zu Beginn waren sie erstaunt über die vielen Vorteile, die sie im Gegensatz zu ihren gleichaltrigen Kollegen hatten. Sie hatten sich zudem sehr auf den Neubau gefreut, als sie die ersten Pläne gesehen hatten."
						elsif (gold || haus || boot) && drogen
							s<<"Ihr Motto in den 80er Jahren war: 'Her mit den Drogen, ihr Filzläuse!'"
						else
							s<<"Sie waren erschüttert über die Zersplitterung der Stadt. Die turbulente Zeit hat ihren Alltag und vor allem ihren Freundeskreis verändert. "	
						end
					else #Nicht Zürcher
						if	zupackend && youth_3 = true
							s<<"Ein Freund in Zürich informierte sie über das Geschehen am Platzspitz. Sie mobilisierten ihre Freunde und gemeinsam unterstützten sie die Besetzer bei strategischen Entscheidungen."
						elsif neugierig ||  rationalistisch || künstlerisch
							s<<"Sie haben in den 80er Jahren für eine regionale Zeitung geschrieben. Sie waren fasziniert vom Geschehen und haben über Jahre hinweg Kontakt zu AktivistInnen gehabt."		
						elsif polyamourös || drogen
							s<<"Leider konnten sie aus familiären Gründen der Bewegung des Platzspitzes nicht beitreten. Sie mussten sich mit Exkursionen dahin begnügen."
						elsif kind_weissnicht || monotheistisch || stabil || travel_asien
							s<<"Sie hatten in den 80er Jahren ganz anderes im Kopf als die kleinlichen Zürcher Streitereien. Sie waren 1984 auf einer Reise im Tibet und widmeten sich dem Buddhismus."
						else
							s<<"Sie hatten damals nicht eingesehen was das Ganze mit der freien Liebe, den Drogen und den utopischen Ideen auf sich hatte."
						end
					end
				
				#Heute		
					if zuercher
						 if esoterisch && (künstlerisch || sozial)
							s<<"Als MitbegründerIn des Kunst- und Kulturhauses 'Plaztart', dessen Zielsetzung es noch heute ist, Jugendlichen und Erwachsenen einen Ort zur Verfügung zu stellen, in dem sie aus dem Drogenmilieu heraustreten können, sind sie heute dort Ehrengast und veranstalten ab und zu noch Workshops."
						elsif haus && künstlerisch 
							s<<"Heute sind dank dem Abstimmungsergebnis reich, da sie sich als Architekt, damals sofort auf die Aufstockung von Häusern spezialisiert haben. Selber wohnen sie in einem selbstgebauten Turm im neugothischen Stiel auf dem Helvetiaplatz." 
						elsif künstlerisch && (konsum || polyamourös || zupackend )
							s<<"Inzwischen haben sie sich auf den Unterhaltungssektor innerhalb des Freistaatstourismus spezilisiert und nehmen die BesucherInnen geschickt aus."
						
						elsif self.job_changes >= 3 && (chaotisch || stabil || künstlerisch)
							s<<"Heute sind sie mit den Vorstellungen der jüngeren Platzspitz Generation nicht ganz einverstanden. Sie möchten den Freistaat jetzt nach all den Jahren aktiver Beteiligung ein für allemal verlassen." 
						elsif (reich || gold || haus) && drogen
							s<<"Nach einem Einbruch einer Gang in ihrem Haus haben Angst davor, dass der Drogenhandel Ihre Familie zerreisst. Sie haben genug Geld gemacht und wollen sich zurückziehen." 
						elsif boot && self.hobby 
							s<<"Sie nehmen regelmässig an den Drachenbootrennen zwischen Stadt und Freistaat auf dem Züri See teil. Sie schätzen die aufregenden Stunden auf dem Wasser, bei denen sich friedliche Freistaatler und tolerante Zürcher gegenüberstehen. "
						elsif self.hobby && !drogen && boot
							s<<"Bei Fahrten auf der Limmat müssen sie jedesmal die Zollgrenze des Freistaats umschiffen und ärgern sich über den herüberwehenden Geruch von Marihuana. Der 'Müllbergspitz' stört ihrer Meinung nach das Stadtbild und sie wünschen sich das alte Zürich zurück."
						#Gegnerhistorisch
						else musterkind && monotheistisch
							s<<"Heute können sie sich nicht frei in der Stadt bewegen. Sie haben drogenabhängige Verwandte verloren und sind froh, dass die Stadtbefestigung um den Schanzengraben kürzlich wieder nachgebaut wurde."
						end
					else #Nicht Zürcher
						if sozial || künstlerisch
							s<<"Heute Besuchen sie Zürich öfters im Jahr. Als idealistischer Verfechter des Freistaats recherchieren sie vor Ort über die politischen Veränderungen für die Fertigstellung ihres Dokumentarfilms. Sie nehmen meistens einen easyJet Direktflug, damit sie keine Zeit verlieren."
						elsif travel_schweiz && (gold || haus || boot)
							s<<"Heute Besuchen sie Zürich wegen den diversen Hochbauten. Sie sind fasziniert von den exklusiven Hotels und der schnelllebigen Kultur. Sie sind von den Gegensätzen angezogen."
						else
							s<<"Wenn sie heute in Zürich sind, suchen sie manchmal nach Nischen, die von den Zeiten vor 1980 erzählen. Letztens sind sie auf den Üetliberg geandert und haben über die dunkle Stadt geblickt. "
						end
					end
				end
			
			
						
				
			
			# Text für älteste Generation (Eltern der Gründer) Alter heute:  61 +
	
				#Kindheit alter bei POD 32 +
			
				if heut_elterngeneration 
					if zuercher
						if sozial || künstlerisch
							s<<"Als 1984 die ersten Jugendlichen mit grossen Plakaten auf den Platzspitz schreiteten, schauten sie vergnügt zu. Sie konnten noch nicht ahnen, dass sich das ganze Stadtbild verändern würde. " 
						elsif stabil || ökonomisch || zupackend
							s<<"Was auf dem Platzspitz damals geschah, ist für sie ein trauriger Moment in der Geschichte Zürichs. Sie wehrten sich öffentlich gegen die Bildung des Freistaats. "
						elsif kind_weissnicht || abweratend
							s<<"Als die Volksinitiative vor der Abstimmung stand, waren sie sehr unentschlossen und haben sich aus der Debatte raus gehalten. Als dann die Unruhen begannen bereuten sie, dass sie die Initiative angenommen hatten."
						else
							s<<"Ihrer Meinung nach, spielt es keine Rolle, wie das Abstimmungsergebnis damals ausgefiel. Die Unzufriedenheit der jungen Bevölkerung lag schon längere Zeit in der Luft. Insgeheim unterstützten sie die Besetzer und brachten ihnen ab und zu Essen und warme Decken vorbei."
						end
					else #Nicht Zürcher
						if (gold || haus || boot) && (ökonomisch || technisch)
							s<<"1984 waren sie beruflich für drei Wochen in Zürich. Sie hatten ein Zimmer im 18. Stock des Hotel Marriott gegenüber des Platzspitz. Eines Nachts wurden sie durch lautes Geschrei geweckt. Als sie aus dem Fenster schauten, erkannten sie vermummte Figuren und Polizisten, die am Wasser kämpften. Sie waren sehr erschüttert darüber, was in den Tagen darauf folgte. "
						elsif neugierig ||  rationalistisch || künstlerisch
							s<<"Sie haben in den 80er Jahren für eine regionale Zeitung geschrieben. Sie waren fasziniert vom Geschehen und haben über Jahre hinweg Kontakt zu AktivistInnen gehabt."		
						elsif polyamourös || drogen
							s<<"Als alter Gentrifizierungs - Gegner, sind sie nach Zürich gereist, um sich der Gruppe anzuschliessen. Sie waren damals älter als die meisten und wurden zu einer Art grossem Bruder."
						else
							s<<"Sie hatten damals nicht eingesehen was das Ganze mit der freien Liebe, den Drogen und den utopischen Ideen auf sich hatte."
						end
					end	
				#Heute		
					if zuercher
						if sozial || künstlerisch || drogen
							s<<"Heute unterstützen sie als Gönner das Kunst- und Kulturhauses 'Plaztart', dessen Zielsetzung es noch heute ist, Jugendlichen und Erwachsenen einen Ort zur Verfügung zu stellen, in dem sie aus dem Drogenmilieu heraustreten können. Sie mögen die lockeren Gestalten, die man im Freistaat antrifft." 
						else
							s<<"Mittlerweile ist der Freistaat kein Fremdkörper mehr für sie. Dennoch stellt er und die Verbindung nach Aussen für sie ein Problemherd dar. Sie wissen, dass ihr eigenes Verhalten widersprüchlich ist, denn sie profitieren von den etlichen billigen Rausch- und Unterhaltungsmöglichkeiten. Letztens sind sie dort heimlich für zwei Tage untergetaucht."						
						end
					else #Nicht Zürcher
						if sozial || künstlerisch
							s<<"Letztens haben sie ein junges Paar gesehen, dass sich high im Tram auf den Boden gelegt hat. Sie sind irritiert über die heutige Entwicklung des Freistaats. Sie haben viel Zeit und versuchen mit kreativen Köpfen eine Kampagne zu starten, die hilft Zürich von der Korruption zu befreien."
						elsif	
							s<<"Heute besuchen sie Zürich wegen den diversen Hochbauten. Sie sind in ihrem Alter umso faszinierter von den exklusiven Hotels und der schnelllebigen Kultur. Sie sind von den Gegensätzen angezogen."
						else
							s<<"Wenn sie heute in Zürich sind, suchen sie manchmal nach Nischen, die von den Zeiten vor 1980 erzählen. Letztens sind sie auf den Üetliberg gewandert und haben über die dunkle, traurige Stadt geblickt. "
						end
					end
				end
				
			return concatenate_spacify(s)
			 
		end
		
		def translate_uchronia_61_alt
	
			s = []
				
			if @Gründer 
				s<<"Sie waren an der Gründung des Freistaates beteiligt und haben aus Überzeugung die doppelte Staatsbürgerschaft angenommen."
			end
			
			
			if @Gründer 
				if self.job_changes >= 3 
					s<<"Sie möchten den Freistaat jetzt nach all den Jahren aktiver Beteiligung ein für allemal verlassen. Sie haben Angst davor, dass der Drogenhandel Ihre Familie zu sehr zerreisst." 
				elsif technisch
					s<<"Sie waren bei der Entwicklung einer Applikation dabei, die als sicheres Kommunikationsmittel für den Drogenhandel zwischen den Freistaatlern und der Aussenwelt dient. Sie arbeiten Teils ausserhalb des Freistaats in einem geheimen Drogenumschlagplatz, um sich vor mafiösen Organisationen zu schützen." 
				elsif künstlerisch 
					s<<"Sie haben sich auf den Unterhaltungssektor im Freistaatstourismus spezilisiert und nehmen die BesucherInnen geschickt aus." 
				elsif sozial && !männlich
					s<<"Sie unterstützen als idealistische Verfechterin des Freistaats Werbekampagnen, die weltweit das Image des Staats zu verbessern versuchen. " 
				else sozial && !weiblich && !sex_weißnicht
					s<<"Sie unterstützen als idealistischen Verfechter des Freistaats Werbekampagnen, die weltweit das Image des Staats zu verbessern versuchen. "	
				end
			end
			
			
	
			if @Gegnerhistorisch
				s<<"Ihre Kindheit verlief gemäss ihren Erinnerungen. Die Jugendunruhen zu Beginn der 80er Jahre haben ihre Sicht auf Zürich beeinflusst." 
			end
			
			
			if  @Besucher \
			&& travel == "Schweiz"
				s<<"Sie haben schon mehrmals eine Direktreise zum Platz Spitz gebucht."
			end
			
			
			
			if @Profiteur
				if gold
					s<<"Sie sind durch den Freistaat reich geworden (wieso?)"
				elsif drogen
					s<<"Sie kaufen dort Drogen" 
				else
					s<<"Der wirtschaftliche Erfolg des Freistaates hat sie überzeugt! Sie überlegen einen Teil ihres Vermögens in Aktien des Platz Spitz anzulegen."
				end
			end 
			
			if @Unpolitisch	|| @Gegnerheute || @Gegnerhistorisch \
			&& boot \
			&& self .hobby \
			&& !drogen
				s<<"Bei Fahrten auf der Limmat müssen sie jedesmal die Zollgrenze des Freistaats umschiffen und ärgern sich über den herüberwehenden Geruch von Marihuana."
			end
		
			if boot \
			&& self.hobby 
				s<<"Sie nehmen regelmässig an den Drachenbootrennen zwischen Stadt und Freistaat auf dem Züri See teil."
			end
			
			if @Unpolitisch || @Profiteur || @Gegnerheute \
			&& haus || reich 
				s<<"Endlich können Sie ihr Haus um mehrere Stockwerke erhöhen. Von ihrem Balkon aus sehen Sie direk auf den Freistaat. Sie fühlen sich nach dem Umbau ihres Hauses sicherer."	
			end
			
			if @Unpolitisch || @Profiteur || @Gegnerheute || @Gegnerhistorisch 
				s<<"Sie sind froh, dass die Stadtbefestigung um den Schanzengraben wieder eingeführt wurde."
			end		
			
			if @Profiteur || @Unpolitisch\
			&& ökonomisch || technisch \
			&& weltverbesserer
				s<<" Die vielen neuen Hochhäuser am Bellevue befinden sich wegen der Bodenbeschaffenheit in Sturzgefahr. Sie haben einen guten Job innerhalb der Stadtplanung Zürichhs und stehen vor einer grossen Herausforderung."
			end
	
		end		
	
	end
end	