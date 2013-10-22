# encoding: utf-8

class UserBiography < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :childhood, :crisis, :education, :hobby, :job_changes, :parents, :religion, :romance, :travel, :youth_1, :youth_2, :youth_3, :youth_4, :zurich, :owns_boat, :owns_house, :owns_gold, :name, :sex, :on_tour

BIRTHPLACE_OPTIONS = ['in Zürich', 'im Aaargau', 'in der Schweiz']
PARENTS_OPTIONS = ['arm', 'reich', 'weiß nicht']
CHILDHOOD_OPTIONS = ['Musterkind', 'chaotisch', 'neugierig', 'weiß nicht']
SEX_OPTIONS = ['weiblich', 'männlich', 'weiß nicht']
EDUCATION_OPTIONS = ['sozial', 'künstlerisch', 'technisch', 'ökonomisch', 'keine', 'weiß nicht']
ROMANCE_OPTIONS = ['keine', 'kompliziert', 'verheiratet', 'geschieden', 'weiß nicht']
CRISIS_OPTIONS = ['unberechenbar', 'abwartend', 'zupackend', 'weiß nicht']
TRAVEL_OPTIONS = ['Schweiz', 'Europa', 'Afrika', 'Australien', 'Südamerika', 'Nordamerika', 'Asien', 'Antarktis', 'weiß nicht']
RELIGION_OPTIONS = ['rationalistisch', 'monotheistisch', 'polytheistisch', 'esoterisch', 'konsum', 'weiß nicht']

# youth _1 Haben Sie mal was gestohlen?  Ja Nein
# youth_2 Drogenerfahrungen?  Ja  Nein
# youth_3 Haben Sie geglaubt, dass Sie die Welt verändern können?  Ja  Nein
# youth_ 4Waren Sie bei Gleichaltrigen beliebt? Ja  Nein

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
			t += "Sie entschlossen sich schließlich, in ein weniger chaotisches Land auszuwandern, nämlich nach " + self.travel + ". "
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
			s += "Heute nutzen Sie regelmäßig die Spielautomaten in der Tram. "
		end

		if age(2013) > 16 && self.zurich && self.crisis == 'zupackend'
			s += "Als kürzlich ein anderer Fahrgast einen Hauptgewinn macht, wird er überfallen. Sie schreiten ein und erhalten einen Orden für Zivilcourage. "
		end

		return s
		
	end

	def translate_uchronia_61
	
		s = []
	
		if age(1984) <= 30 && age(1984) >= 15 && schweizer
			s<<"Ihre Kindheit verlief gemäß ihren Erinnerungen. Die Jugendunruhen zu Beginn der 80er Jahre haben ihre Sicht auf Zürich beeinflusst." 
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
			s<<"Sie nehmen regelmäßig an den Drachenbootrennen zwischen Stadt und Freistaat auf dem Züri See teil."
		end
		
		t = ""
		s.each do |e|
			t += e + " "
		end
		
		return t

	end
	
	
	
	
	
	

	
end
