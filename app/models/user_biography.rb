# encoding: utf-8

class UserBiography < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :childhood, :crisis, :education, :hobby, :job_changes, :parents, :religion, :romance, :travel, :youth_1, :youth_2, :youth_3, :youth_4, :zurich, :owns_boat, :owns_house, :owns_gold, :name, :sex, :on_tour

BIRTHPLACE_OPTIONS = ['in Zürich', 'im Aargau', 'in der Schweiz', 'im Ausland']
PARENTS_OPTIONS = ['arm', 'reich', 'weiß nicht']
CHILDHOOD_OPTIONS = ['Musterkind', 'chaotisch', 'neugierig', 'weiß nicht']
SEX_OPTIONS = ['weiblich', 'männlich', 'weiß nicht']
EDUCATION_OPTIONS = ['sozial', 'künstlerisch', 'technisch', 'ökonomisch', 'keine', 'weiß nicht']
ROMANCE_OPTIONS = ['keine', 'kompliziert', 'polyamurös', 'stabil', 'verheiratet', 'geschieden', 'weiß nicht']
CRISIS_OPTIONS = ['unberechenbar', 'abwartend', 'zupackend', 'weiß nicht']
TRAVEL_OPTIONS = ['Schweiz', 'Europa', 'Afrika', 'Australien', 'Südamerika', 'Nordamerika', 'Asien', 'Antarktis', 'weiß nicht']
RELIGION_OPTIONS = ['rationalistisch', 'monotheistisch', 'polytheistisch', 'esoterisch', 'konsum', 'weiß nicht']

# youth _1 Haben Sie mal was gestohlen?  Ja Nein
# youth_2 Drogenerfahrungen?  Ja  Nein
# youth_3 Haben Sie geglaubt, dass Sie die Welt verändern können?  Ja  Nein
# youth_4 Waren Sie bei Gleichaltrigen beliebt? Ja  Nein
# youth_5 Waren sie Teil eines Geheimclubs? Ja Nein
# youth_6 Haben Sie sich Gedanken zu Überlebensstrategien gemacht? Ja Nein

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

	def translate_uchronia_61_NEW
	
		s = []
		
		#mitmacher = self.childhood ((Kindheit: chaotische ODER neugierig) ODER (Glaube an Weltveränderung )) UND nach 1970 geboren
	
	end


	def translate_uchronia_61
	
		s = []
	

		
		if age(1984) <= 30 && age(1984) >= 15 && schweizer
			s<<"Ihre Kindheit verlief gemäss ihren Erinnerungen. Die Jugendunruhen zu Beginn der 80er Jahre haben ihre Sicht auf Zürich beeinflusst." 
		end

		if age(1984) <=30 && age(1984) >= 15 && schweizer && drogen && weltverbesserer
			s<<"Sie waren an der Gründung des Freistaates beteiligt und haben aus Überzeugung die doppelte Staatsbürgerschaft angenommen."
		end

		if age(1984) >=30 && schweizer && drogen && self.education == "sozial" && weltverbesserer
			s<<"Als Sozialarbeiter haben sie das harte Vorgehen der Behörden stark kritisiert. und die Entwicklung des Freistaates mit Interesse verfolgt."
		end
 		
 		if age(2013) > 16 && !zuercher && drogen && travel == "Schweiz"
			s<<"Sie haben schon mehrmals eine Direktreise zum Platz Spitz gebucht."
		end
		
		if age(2013) > 14 && age(2013) <= 30 && zuercher && drogen
			s<<"Ihre Eltern haben sie vor dem Besuch des Freistaates gewarnt, natürlich sind sie trotzdem hingegangen."
		end

		if drogen && gold
			s<<"Der wirtschaftliche Erfolg des Freistaates hat sie überzeugt! Sie überlegen einen Teil ihres Vermögens in Aktien des Platz Spitz anzulegen."
		end
 
		if self.boot && self.hobby && !drogen
			s<<"Bei Fahrten auf der Limmat müssen sie jedesmal die Zollgrenze des Freistaats umschiffen und ärgern sich über den herüberwehenden Geruch von Marihuana."
		end

		if self.boot && self.hobby
			s<<"Sie nehmen regelmässig an den Drachenbootrennen zwischen Stadt und Freistaat auf dem Züri See teil."
		end
		
		t = ""
		s.each do |e|
			t += e + " "
		end
		return t

	end
	
	def translate_uchronia_17
	
		s = []
		
		if age(2013) > 1
			s<<"Bis Ende 2012 verläuft Ihr Leben so, wie sie es kennen."
		end

		if self.childhood == 'Musterkind' || self.childhood == 'weiss nicht' 
			s<<"Nach dem Terroranschlag wird es Ihnen in Zürich zu ungemütlich. Sie ziehen vorübergehend zu Verwandten aufs Land."
		end

		if self.childhood == 'chaotisch' || self.childhood == 'neugierig'
			s<<"Nach dem Terroranschlag erleben Sie, wie viele Ihrer Freunde die Stadt verlassen. Sie selbst sehen in der Situation ein Chance für einen Neuanfang in Zürich. Am Fusse des Züribergs finden Sie eine leerstehende zurückgelassene Villa, in der sie sich einrichten."
		end

		if (self.childhood == 'chaotisch' || self.childhood == 'neugierig') && self.religion == 'polytheistisch' || self.religion == 'esoterisch'  || self.religion == 'konsum'
			s<<"An den Wochenenden geniessen Sie das blühende Nachtleben der Stadt. Unzählige neue Clubs haben in der letzten Zeit in den Ruinen des Niederdorfs eröffnet. Die Partyszene in Zürich erlebt einen Boom und zieht Partytouristen aus der ganzen Welt an."
		end
 
		if (self.childhood == 'Musterkind' || self.childhood == 'weiss nicht') && self.religion == 'polytheistisch' || self.religion == 'esoterisch'  || self.religion == 'konsum'
			s<<"An den Wochenenden kommen Sie zurück in die Stadt und geniessen das blühende Nachtleben. Unzählige neue Clubs haben in der letzten Zeit in den Ruinen des Niederdorfs eröffnet. Die Partyszene in Zürich erlebt einen Boom und zieht Partytouristen aus der ganzen Welt an."
		end

		if (self.childhood == 'chaotisch' || self.childhood == 'neugierig') && boot
			s<<"Da Sie eine schönere Bleibe in einer verlassenen Villa finden, vermieten Sie Ihr Haus unter an EXIT. Dort finden nun täglich Sterbe-Parties statt, zu denen vor allen Dingen suizidale Grossstadthipster einfliegen. Niemand weiss vorher, wer die Party überlebt oder wem eine tödliche Dosis im Cocktail verabreicht wird."
		end
	
		t = ""
		s.each do |e|
			t += e + " "
		end
		return t

	end
	
	
end

