# encoding: utf-8

class UserBiography < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :childhood, :crisis, :education, :hobby, :job_changes, :parents, :religion, :romance, :travel, :youth_1, :youth_2, :youth_3, :youth_4, :zurich, :owns_boat, :owns_house, :owns_gold, :name, :sex, :on_tour

	BIRTHPLACE_OPTIONS = ['in Zürich', 'im Aaargau', 'in der Schweiz']
	validates :birthplace, :inclusion => BIRTHPLACE_OPTIONS	
	
	PARENTS_OPTIONS = ['Arm', 'Reich', 'weiß nicht']
	validates :parents, :inclusion => PARENTS_OPTIONS

	CHILDHOOD_OPTIONS = ['Musterkind', 'Chaotisch', 'Neugierig', 'weiß nicht']
	validates :childhood, :inclusion => CHILDHOOD_OPTIONS
	
	SEX_OPTIONS = ['weiblich', 'männlich', 'weiß nicht']
	validates :sex, :inclusion => SEX_OPTIONS
	
	EDUCATION_OPTIONS = ['sozial', 'künstlerisch', 'technisch', 'ökonomisch', 'keine', 'weiß nicht']
	validates :education, :inclusion => EDUCATION_OPTIONS
	
	ROMANCE_OPTIONS = ['keine', 'kompliziert', 'verheiratet', 'geschieden', 'weiß nicht']
	validates :romance, :inclusion => ROMANCE_OPTIONS
	
	CRISIS_OPTIONS = ['unberechenbar', 'abwartend', 'zupackend', 'weiß nicht']
	validates :crisis, :inclusion => CRISIS_OPTIONS
	
	TRAVEL_OPTIONS = ['Europa', 'Afrika', 'Australien', 'Südamerika', 'Nordamerika', 'Asien', 'Antarktis', 'weiß nicht']
	validates :travel, :inclusion => TRAVEL_OPTIONS
	
	RELIGION_OPTIONS = ['rationalistisch', 'monotheistisch', 'polytheistisch', 'esoterisch', 'konsum', 'weiß nicht']
	validates :religion, :inclusion => RELIGION_OPTIONS

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
		
		t['111'] += translate_uchronia_111
		t['2'] += translate_uchronia_2

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

	def translate_uchronia_111
	
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


	
end
