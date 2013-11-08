# encoding: utf-8
require 'digest/md5'

class UserBiography < ActiveRecord::Base

	include Translate_uchronia_2
	include Translate_uchronia_11
	include Translate_uchronia_17
	include Translate_uchronia_19
	include Translate_uchronia_23
	include Translate_uchronia_25
	include Translate_uchronia_37
	include Translate_uchronia_61
	include Translate_uchronia_87
	include Translate_uchronia_110
	
	belongs_to :tour
	
	attr_accessible :birthday, :birthplace, :childhood, :crisis, :education, :hobby, :job_changes, :parents, :religion, :romance, :travel, :youth_1, :youth_2, :youth_3, :youth_4, :zurich, :owns_boat, :owns_house, :owns_gold, :name, :sex, :on_tour, :tour_id

	BIRTHPLACE_OPTIONS = ['in Zürich', 'im Aargau', 'in der Schweiz', 'im Ausland']
	PARENTS_OPTIONS = ['arm', 'reich', 'weiss nicht']
	CHILDHOOD_OPTIONS = ['Musterkind', 'chaotisch', 'neugierig', 'weiss nicht']
	SEX_OPTIONS = ['weiblich', 'männlich', 'weiss nicht']
	EDUCATION_OPTIONS = ['sozial', 'künstlerisch', 'technisch', 'ökonomisch', 'keine', 'weiss nicht']
	ROMANCE_OPTIONS = ['keine', 'kompliziert', 'polyamourös', 'stabil', 'verheiratet']
	CRISIS_OPTIONS = ['unberechenbar', 'abwartend', 'zupackend', 'weiss nicht']
	TRAVEL_OPTIONS = ['Schweiz', 'Europa', 'Afrika', 'Australien', 'Südamerika', 'Nordamerika', 'Asien', 'Antarktis', 'weiss nicht']
	RELIGION_OPTIONS = ['rationalistisch', 'monotheistisch', 'polytheistisch', 'esoterisch', 'konsum', 'weiss nicht']
	
	# youth_1 Haben Sie mal was gestohlen?  Ja Nein
	# youth_2 Drogenerfahrungen?  Ja  Nein
	# youth_3 Haben Sie geglaubt, dass Sie die Welt verändern können?  Ja  Nein
	# youth_4 Waren Sie bei Gleichaltrigen beliebt? Ja  Nein
	# youth_5 Waren sie Teil eines Geheimclubs? Ja Nein
	# youth_6 Haben Sie sich Gedanken zu Überlebensstrategien gemacht? Ja Nein
	
	def jobchanges
		return self.job_changes
	end	
	
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
	
	def travel_weiss nicht
		return self.travel == "weiss nicht"
	end
	
	def	weiblich
		return self.sex == "weiblich"
	end
	
	def	männlich
		return self.sex == "männlich"
	end
	
	def	sex_weissnicht
		return self.sex == "sex_weissnicht"
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

	def education_weissnicht	
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
	
	def religion_weissnicht
		return self.religion == "weiss nicht"
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
	
	def aargauer
		if self.birthplace == 'im Aargau'
			return true
		else 
			return false
		end
	end	

	def einwohner
		return self.zurich
	end	

	def concatenate_spacify(s)
		t = ""
		s.each do |e|
			t += e + " "
		end
		return t
	end

	def place_in_tour
		if self.tour
			index = 0
			self.tour.user_biographies.order('id asc').each do |b|
				if b.id == self.id
					return index
				else 
					index = index + 1
				end
			end
		end
	end

	def translations
		
		t = {}
		Uchronia.all.each do |uchronia|
			t[uchronia.slug] = "Sie werden im Jahr " + self.birthday.year.to_s + " " + self.birthplace + " " + "geboren. "
		end
		
		t['110']+= translate_uchronia_110
		t['2']  += translate_uchronia_2
		t['61'] += translate_uchronia_61
		t['17'] += translate_uchronia_17
		t['19'] += translate_uchronia_19
		t['25'] += translate_uchronia_25
		t['37'] += translate_uchronia_37
		t['87'] += translate_uchronia_87
		t['23'] += translate_uchronia_23
		t['11'] += translate_uchronia_11

		Uchronia.all.each do |uchronia|
			t[uchronia.slug] += "Heute sind Sie " + age(2013).to_s + " Jahre alt."
		end

		return t
	end
	
end