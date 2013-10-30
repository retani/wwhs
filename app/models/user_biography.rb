# encoding: utf-8

class UserBiography < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :childhood, :crisis, :education, :hobby, :job_changes, :parents, :religion, :romance, :travel, :youth_1, :youth_2, :youth_3, :youth_4, :zurich, :owns_boat, :owns_house, :owns_gold, :name, :sex, :on_tour

BIRTHPLACE_OPTIONS = ['in Zürich', 'im Aargau', 'in der Schweiz', 'im Ausland']
PARENTS_OPTIONS = ['arm', 'reich', 'weiß nicht']
CHILDHOOD_OPTIONS = ['Musterkind', 'chaotisch', 'neugierig', 'weiß nicht']
SEX_OPTIONS = ['weiblich', 'männlich', 'weiß nicht']
EDUCATION_OPTIONS = ['sozial', 'künstlerisch', 'technisch', 'ökonomisch', 'keine', 'weiß nicht']
ROMANCE_OPTIONS = ['keine', 'kompliziert', 'polyamourös', 'stabil', 'verheiratet']
CRISIS_OPTIONS = ['unberechenbar', 'abwartend', 'zupackend', 'weiß nicht']
TRAVEL_OPTIONS = ['Schweiz', 'Europa', 'Afrika', 'Australien', 'Südamerika', 'Nordamerika', 'Asien', 'Antarktis', 'weiß nicht']
RELIGION_OPTIONS = ['rationalistisch', 'monotheistisch', 'polytheistisch', 'esoterisch', 'konsum', 'weiß nicht']

# youth _1 Haben Sie mal was gestohlen?  Ja Nein
# youth_2 Drogenerfahrungen?  Ja  Nein
# youth_3 Haben Sie geglaubt, dass Sie die Welt verändern können?  Ja  Nein
# youth_4 Waren Sie bei Gleichaltrigen beliebt? Ja  Nein
# youth_5 Waren sie Teil eines Geheimclubs? Ja Nein
# youth_6 Haben Sie sich Gedanken zu Überlebensstrategien gemacht? Ja Nein

	
	def romance_keine
		return self.romance == "keine"
	end
	
	def kompliziert
		return self.romance == "kompliziert"
	end
	
	def polyamourös
		return self.romance == "polyamourös"
	end
	
	def stabil
		return self.romance == "stabil"
	end
	
	def verheiratet
		return self.romance == "verheiratet"
	end
	
	def romance_weissnicht
		return self.romance == "weiss nicht"
	end
	
	def travel_schweiz
		return self.travel == "Schweiz"
	end
	
	def travel_europa
		return self.travel == "Europa"
	end
	
	def travel_afrika
		return self.travel == "Afrika"
	end
	
	def travel_australien
		return self.travel == "Australien"
	end
	
	def travel_südamerika
		return self.travel == "Südamerika"
	end
	
	def travel_nordamerika
		return self.travel == "Nordamerika"
	end
	
	def travel_asien
		return self.travel == "Asien"	
	end
	
	def travel_antarktis
		return self.travel == "Antarktis"	
	end
	
	def travel_weiß nicht
		return self.travel == "weiß nicht"
	end
	
	def	weiblich
		return self.sex == "weiblich"
	end
	
	def	männlich
		return self.sex == "männlich"
	end
	
	def	sex_weißnicht
		return self.sex == "sex_weißnicht"
	end
	
	def arm
		return self.parents == "arm"
	end
	
	def reich
		return self.parents == "reich"
	end
		
	def parents_weissnicht
		return self.parents == "weissnicht"	
	end
	
	def sozial	
		return self.education == "sozial"
	end
	
	def künstlerisch
		return self.education == "künstlerisch"
	end
	
	def technisch	
		return self.education == "technisch"
	end
	
	def ökonomisch	
		return self.education == "ökonomisch"
	end
	
	def keine	
		return self.education == "keine"
	end
	
	def technisch	
		return self.education == "technisch"
	end
	
	def rationalistisch
		return self.religion == "rationalistisch"
	end
	
	def monotheistisch
		return self.religion == "monotheistisch"
	end
	
	def polytheistisch
		return self.religion == "polytheistisch"
	end
		
	def esoterisch
		return self.religion == "esoterisch"
	end
	
	def konsum
		return self.religion == "konsum"
	end
	
	def religion_weißnicht
		return self.religion == "weiß nicht"
	end
		
	def gold 
		return self.owns_gold
	end

	def haus 
		return self.owns_house
	end

	def boot
		return self.owns_boat
	end

	def gestohlen
		return self.youth_1
	end

	def drogen 
		return self.youth_2
	end
	
	def weltverbesserer
		return self.youth_3
	end
	
	def beliebt
		return self.youth_4
	end
	
	def geheimclub
		return self. youth_5
	end
		
	def überlebensstrategie
		return self. youth_6
	end	
	
	def zupackend
		self.crisis == 'zupackend'	
	end

	def abwartend
		self.crisis == 'abwartend'	
	end

	def unberechenbar
		self.crisis == 'unberechenbar'	
	end

	def crisis_weiss_nicht
		self.crisis == 'weiss nicht'	
	end

	def chaotisch
		return self.childhood == "chaotisch"
	end

	def musterkind
		return self.childhood == "musterkind"
	end

	def neugierig
		return self.childhood == "neugierig"
	end

	def kind_weissnicht
		return self.childhood == "weiss nicht"
	end

	def age (year)
		return year - self.birthday.year 
	end

	def zuercher
		if self.birthplace == 'in Zürich'
			return true
		else 
			return false
		end
	end

	def schweizer
		if self.birthplace == 'in Zürich' || self.birthplace == 'im Aargau' || self.birthplace == 'in der Schweiz'
			return true
		else 
			return false
		end
	end

	def translations
		
		t = {}
		Uchronia.all.each do |uchronia|
			t[uchronia.slug] = "Sie werden im Jahr " + self.birthday.year.to_s + " " + self.birthplace + " " + "geboren. "
		end
		
		t['110'] += translate_uchronia_110
		t['2'] += translate_uchronia_2
		t['61'] += translate_uchronia_61
		t['17'] += translate_uchronia_17

		Uchronia.all.each do |uchronia|
			t[uchronia.slug] += "Heute sind Sie " + age(2013).to_s + " Jahre alt."
		end

		return t
	end
	
	def translate_uchronia_2
	
		t = ""
	
		if self.birthday.year < 1978
			crisis_age = "adult";
		elsif self.birthday.year < 1978
			crisis_age = "twen";
		elsif self.birthday.year < 1988
			crisis_age = "teen";
		elsif self.birthday.year < 2008
			crisis_age = "child";			
		else
			crisis_age = "baby";
		end
		
		if crisis_age == "child" 
			if self.parents == "Reich"
				t += "Der Niedergang Ihrer Familie hat Ihnen schwer zu schaffen gemacht. "
			end
		end
		
		# easter eggs
		
		good_countries = ['Russland', 'Brasilien', 'China', 'Indien']
		if good_countries.any? { |w| self.travel[w] }
			t += "Sie entschlossen sich schliesslich, in ein weniger chaotisches Land auszuwandern, nämlich nach " + self.travel + ". "
			return t
		end
		
		# now

		if owns_boat
			t += "Glücklicherweise konnten Sie sich über Wasser halten. Dank Ihres Boots verdienen Sie als Drogenschmuggler über den Zürisee recht gut."
			return t

		end
		
		return t

	end

	def translate_uchronia_110
	
		s = ""
		
		if age(2013) <= 33 \
		&&  self.job_changes  >=4 \
		&&  self.education == 'künstlerisch' \
		&& (self.childhood == 'chaotisch' || self.childhood =='neugierig' || self.childhood == 'weiss nicht') \
		&& (self.religion == 'rationalistisch' || self.religion == 'weiss nicht')
			
			s += " Sie sind ein Kind der Achziger und die Zürcher U-Bahn gehört schon seit ihrer Kindheit zu Ihren täglichen Fortbewegungsmitteln. Sie führen ein Leben im Untergrund und finden, dass die privatisierten Tram u.a. auch die Rösslitram das Stadtbild Zürichs verfälscht. Sie sind nicht einverstanden damit, dass die Rösslitram als historisches Denkmal gefeiert wird, wo es doch im Sommer 1973 zu hässlichen Auseinandersetzungen zwischen der Autorität und den Protestierenden gekommen war. Nachts steigen Sie mit tierfreundlicher Farbe in die Ställe der 'Tramrössli' und sprayen Ihre Poesie auf die Rücken der Pferde. " 
			return s
			
		end	
				
		
		if age(1973) > 12 && schweizer
			s += "Ihre Kindheit verläuft genau so, wie sie sich an sie erinnern. Das Abstimmungsergebnis 1973 verändert jedoch Ihr Lebensgefühl grundlegend. Gebannt verfolgen Sie über die nächsten Jahre den Baufortschritt der Zürcher U-Bahn. "
		end

		if self.birthday.year >= 1973 && self.birthday.year <= 1985 && zuercher
			s += "Die überall verteilten Baustellen der U-Bahn-Haltestellen prägen das Stadtbild ihrer Kindheit. "
		end 

		if self.birthday.year >= 1988 && zuercher
			s += "Zu Ihren frühesten Kindheitserinnerungen gehört ein Erlebnis auf der “Rösslitram”. Die U-Bahn gibt es seit Sie denken können. "
		end

		if age(2004) > 10 && age(2004) < 20
			s += "Als fan von TEARS sind sie selbstverständlich beim Konzert in der Tram dabei und erleben den Unfall mit. "
		end
		
		if age(2004) > 20
			s += "Als sich das Unglück in der Musik-Tram ereignet, sind Sie schon viel zu alt, um live dabei zu sein. "
		end

		if age(2013) > 16 && self.zurich
			s += "Heute nutzen Sie regelmässig die Spielautomaten in der Tram. "
		end

		if age(2013) > 16 && self.zurich && self.crisis == 'zupackend'
			s += "Als kürzlich ein anderer Fahrgast einen Hauptgewinn macht, wird er überfallen. Sie schreiten ein und erhalten einen Orden für Zivilcourage. "
		end

		if age(2013) >= 25 && self.zurich && self.religion = 'konsum'  
			s += "Sie beobachten schon seit einiger Zeit, wie die Zürcher Jugend ihre Tage vor den Glücksautomaten verschwenden. Sie überdenken Ihr eigenes Konsumverhalten und Gründen eine Selbsthilfegruppe für jugendliche Speilsüchtige. " 		
		end 
		
		return s
	
	
	
	end

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
					s<<"Du weisst fast gar nichts über die Geschichte des Freistaats."
				end
			end
			# Heute
			if zuercher 
				if !esoterisch && (drogen || neugierig || künstlerisch || ökonomisch)
					s<<"Du verbringst heimlich Zeit im Freistaat und hast vor einiger Zeit deine erste Drogenerfahrungen gemacht."
				elsif esoterisch && beliebt
					s<<"Du grenzt dich von nicht Freistaatlern ab und planst dort zu bleiben."
				elsif esoterisch 
					s<<"Das Leben im Freistaat findest du beengend."
				else 
					s<<"Du findest den Freistaat chaotisch und hast nicht genug Mut, um den Freistaat zu betreten."
				end
			else #Nicht Zürcher
				if drogen || neugierig || künstlerisch
					s<<"Deine Eltern haben dich vor dem Besuch des Freistaates gewarnt, natürlich bist du letztens trotzdem mit deinen Freunden hingegangen."
				else				
					s<<"Der Freistaat ist dir ziemlich fremd und du hast momentan kein Interesse daran, diese Welt zu erkunden. "
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
					s<<"Sie sind nach den grossen Unruhen und der Zersplitterung der Stadt geboren. Ihre Eltern haben sie stets vor den Gefehren der Gegend um den Platzspitz gewarnt. "		
				end
			else #Nicht Zürcher
				if  chaotisch || unberechenbar
					s<<"Sie sind nicht in Zürich geboren. Ihre Eltern haben sie als Kleinkind mitgenommen, als sie Freunde im Freistaat besucht haben. "
				else
					s<<"Sie sind nicht in Zürich geboren und haben erst spät von den Konflikten der Zürcher Bevölkerung erfahren."
					
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
					s<<" "
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
					s<<"Sie sind vor den grossen politischen Veränderungen geboren. Ihre Eltern waren Aktivisten der ersten Stunde und sind mit ihnen als Kleinkind in ein selbstgebautes Haus im neuen Freistaat gezogen." 
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
						s<<"Heute halten sie sich eher am Stadtrand auf. Ab und an besuchen sie alte Freunde im Kunst und Kulturzentrum 'Platzart', um ihre alten 'Spitzli' Freunde zu treffen." 
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
					if choatisch && zupackend
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
				else
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
					elsif musterkind && monotheistisch
						s<<"Heute können sie sich nicht frei in der Stadt bewegen. Sie haben drogenabhängige Verwandte verloren und sind froh, dass die Stadtbefestigung um den Schanzengraben kürzlich wieder nachgebaut wurde."
					end
				else
					if sozial || künstlerisch
						s<<"Heute Besuchen sie Zürich öfters im Jahr. Als idealistischer Verfechter des Freistaats recherchieren sie vor Ort über die politischen Veränderungen für die Fertigstellung ihres Dokumentarfilms. Sie nehmen meistens einen easyJet Direktflug, damit sie keine Zeit verlieren."
					elsif travel_schweiz && (gold || haus || boot)
						s<<"Heute Besuchen sie Zürich wegen den diversen Hochbauten. Sie sind fasziniert von den exklusiven Hotels und der schnelllebigen Kultur. Sie sind von den Gegensätzen angezogen."
					else
						s<<"Wenn sie heute in Zürich sind, suchen sie manchmal nach Nischen, die von den Zeiten vor 1980 erzählen. Letztens sind sie auf den Üetliberg geandert und haben über die dunkle Stadt geblickt. "
					end
				end
			end
		
		
					
			
		
		# Text für ältere Erwachsene Alter heute:  61 +

			#Kindheit alter bei POD 32 +
		
			if heut_elterngeneration 
				if zuerich
					if sozial || künstlerisch
						s<<"Als 1984 die ersten Jugendlichen mit grossen Plakaten auf den Platzspitz schreiteten, schauten sie vergnügt zu. Sie konnten noch nicht, ahnen, dass sich das ganze Stadtbild verändern würde. " 
					elsif stabil || ökonomisch || zupackend
						s<<"Was auf dem Platzspitz damals geschah, ist für sie ein trauriger Moment in der Geschichte Zürichs. Sie hatten die Initiative zwar auch angenommen. "
					#else
					end
				else
					if (gold || haus || boot) && travel_all #??????
						s<<"1984 waren sie beruflich für drei Wochen in Zürich. Sie hatten ein Zimmer im 18. Stock des Hotel Marriott gegenüber des Platzspitz. Eines Nachts wurden sie durch lautes Geschrei geweckt. Als sie aus dem Fenster schauten, erkannten sie vermummnte Figuren und Polizisten, die am Wasser kämpften. Sie waren sehr erschüttert darüber, was in den Tagen darauf folgte. "
					end
				end	
			#Heute		
				#if zuercher
				
				#end
			end
		
		
	

	
		t = ""
		s.each do |e|
			t += e + " "
		end
		
		return t
		 
	end
	
	
		
		
		

	
	def translate_uchronia_17
	
		s = []
		
		# Personenvariablen definieren
			
		
		if self.birthday.year < 1985
			heute_erwachsen = true
		elsif self.birthday.year < 1992
			heute_twen = true
		else
			heute_teen  = true
		end

		
		# Text erzeugen
		
		
		
		# Text für heute Jugendliche
	
		if heute_twen 
			s<<"Bis Ende 2012 verläuft dein Leben so, wie du es kennst."	
				if zuercher
					if neugierig && drogen
						s<<"Du machst in Zürich deine Ausbildung und wärst am Abend des 12.12.2012 beinahe an die Weltuntergangsparty gegangen, an der der Anschlag stattgefunden hat! "
					elsif musterkind
						s<<"Du warst am 12.12.2012 zu Hause und hast spät Abends auf dem Internet von dem Attentat erfahren."
					elsif reich || beliebt
						s<<"Du hast gute Beziehungen in der Zürcher Partyszene. Du hast die Weltuntergangsparty verlassen, weil dir jemand den Tipp gegeben hat, so schnell wie möglich zu verschwinden. Du hast erst später erfahren weshalb."				
					elsif künstlerisch || sozial || anpackend
						s<<"Du hast mit Freunden am 12.12.2012 an einer friedlichen Demo zum Thema 'die Welt geht unter und die Abzocker mit ihr' teilgenommen. Ihr wart alle als Zombies verkleidet. Als ein lauter Knall ertönte, habt ihr euch nichts weiter gedacht."
					else
						s<<""
					end
					
				end
		
		end
		
	
		
		# Heute
		
		
			
		# Text für junge Erwachsene
	
		# Jugend
		
		# Heute
		
		
		
		
		# Text für Erwachsene
	
		# Kindheit
		
		# Heute
		
		
		
		if age(2013) > 1
			s<<"Bis Ende 2012 verläuft Ihr Leben so, wie sie es kennen."
		elsif self.childhood == 'Musterkind' || self.childhood == 'weiss nicht' 
			s<<"Nach dem Terroranschlag wird es Ihnen in Zürich zu ungemütlich. Sie ziehen vorübergehend zu Verwandten aufs Land."
		elsif self.childhood == 'chaotisch' || self.childhood == 'neugierig'
			s<<"Nach dem Terroranschlag erleben Sie, wie viele Ihrer Freunde die Stadt verlassen. Sie selbst sehen in der Situation ein Chance für einen Neuanfang in Zürich. Am Fusse des Züribergs finden Sie eine leerstehende zurückgelassene Villa, in der sie sich einrichten."
		elsif (self.childhood == 'chaotisch' || self.childhood == 'neugierig') && self.religion == 'polytheistisch' || self.religion == 'esoterisch'  || self.religion == 'konsum'
			s<<"An den Wochenenden geniessen Sie das blühende Nachtleben der Stadt. Unzählige neue Clubs haben in der letzten Zeit in den Ruinen des Niederdorfs eröffnet. Die Partyszene in Zürich erlebt einen Boom und zieht Partytouristen aus der ganzen Welt an."
		elsif (self.childhood == 'Musterkind' || self.childhood == 'weiss nicht') && self.religion == 'polytheistisch' || self.religion == 'esoterisch'  || self.religion == 'konsum'
			s<<"An den Wochenenden kommen Sie zurück in die Stadt und geniessen das blühende Nachtleben. Unzählige neue Clubs haben in der letzten Zeit in den Ruinen des Niederdorfs eröffnet. Die Partyszene in Zürich erlebt einen Boom und zieht Partytouristen aus der ganzen Welt an."
		elsif (self.childhood == 'chaotisch' || self.childhood == 'neugierig') && boot
			s<<"Da Sie eine schönere Bleibe in einer verlassenen Villa finden, vermieten Sie Ihr Haus unter an EXIT. Dort finden nun täglich Sterbe-Parties statt, zu denen vor allen Dingen suizidale Grossstadthipster einfliegen. Niemand weiss vorher, wer die Party überlebt oder wem eine tödliche Dosis im Cocktail verabreicht wird."
		end
	
		t = ""
		s.each do |e|
			t += e + " "
		end
		
		return t

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