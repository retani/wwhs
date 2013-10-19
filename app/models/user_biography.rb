# encoding: utf-8

class UserBiography < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :childhood, :crisis, :education, :hobby, :job_changes, :parents, :religion, :romance, :travel, :youth_1, :youth_2, :youth_3, :youth_4, :zurich, :owns_boat, :owns_house, :owns_gold

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

	def age (year)
		return year - self.birthday.year 
	end

	def translations
		
		t = {}
		Uchronia.all.each do |uchronia|
			t[uchronia.slug] = "Du wurdest im Jahr " + self.birthday.year.to_s + " in der Uchronie " + uchronia.title + " geboren."
		end

		t



		return t
	end
	
		
end
