# encoding: utf-8

class UserBiography < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :childhood, :crisis, :education, :hobby, :job_changes, :parents, :religion, :romance, :travel, :youth_1, :youth_2, :youth_3, :youth_4, :zurich, :owns_boat, :owns_house, :owns_gold

	BIRTHPLACE_OPTIONS = ['in Zürich', 'im Aaargau', 'in der Schweiz']
	validates :birthplace, :inclusion => BIRTHPLACE_OPTIONS	
	
	PARENTS_OPTIONS = ['Arm', 'Reich', 'weiß nicht']
	validates :parents, :inclusion => PARENTS_OPTIONS

	CHILDHOOD_OPTIONS = ['Musterkind', 'Chaotisch', 'Neugierig', 'weiß nicht']
	validates :childhood, :inclusion => CHILDHOOD_OPTIONS
	
	EDUCATION_OPTIONS = ['sozial', 'künstlerisch', 'technisch', 'ökonomisch', 'keine', 'weiß nicht']
	validates :education, :inclusion => EDUCATION_OPTIONS
	
	ROMANCE_OPTIONS = ['keine', 'kompliziert', 'verheiratet', 'geschieden', 'weiß nicht']
	validates :romance, :inclusion => ROMANCE_OPTIONS
	
	CRISIS_OPTIONS = ['unberechenbar', 'abwartend', 'zupackend', 'weiß nicht']
	validates :crisis, :inclusion => CRISIS_OPTIONS
	
	RELIGION_OPTIONS = ['rationalistisch', 'monotheistisch', 'polytheistisch', 'esoterisch', 'konsum', 'weiß nicht']
	validates :religion, :inclusion => RELIGION_OPTIONS

	def translations
		
		t = {}
		Uchronia.all.each do |uchronia|
			t[uchronia.slug] = "Du wurdest im Jahr " + self.birthday.year.to_s + " in der Uchronie " + uchronia.title + " geboren."
		end
		
		# UCHRONIE #2
		
		t['uchronie-2']=translate_uchronia_2;

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
		
		good_countries = ['Russland', 'Brasilien', 'China', 'Indien']
		if good_countries.any? { |w| self.travel[w] }
			t += "Sie entschlossen sich schließlich, in ein weniger chaotisches Land auszuwandern, nämlich nach " + self.travel
			return t
		end
		
		if owns_boat
			t += "Glücklicherweise konnten Sie sich über Wasser halten. Dank Ihres Boots verdienen Sie als Drogenschmuggler über den Zürisee recht gut."
		end
		
		
		
	end
	
end
