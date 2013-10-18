# encoding: utf-8

class UserBiography < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :childhood, :crisis, :education, :hobby, :job_changes, :parents, :religion, :romance, :travel, :youth_1, :youth_2, :youth_3, :youth_4, :zurich

	PARENTS_OPTIONS = ['Arm', 'Reich', 'Weiß nicht']
	validates :parents, :inclusion => PARENTS_OPTIONS

	CHILDHOOD_OPTIONS = ['Musterkind', 'Chaotisch', 'Neugierig', 'Weiß nicht']
	validates :childhood, :inclusion => CHILDHOOD_OPTIONS
	
	EDUCATION_OPTIONS = ['sozial', 'künstlerisch', 'technisch', 'ökonomisch', 'keine']
	validates :education, :inclusion => EDUCATION_OPTIONS
	
	ROMANCE_OPTIONS = ['keine', 'kompliziert', 'verheiratet', 'geschieden']
	validates :romance, :inclusion => ROMANCE_OPTIONS
	
	CRISIS_OPTIONS = ['unberechenbar', 'abwartend', 'zupackend']
	validates :crisis, :inclusion => CRISIS_OPTIONS
	
	RELIGION_OPTIONS = ['rationalistisch', 'monotheistisch', 'polytheistisch', 'esoterisch', 'konsum']
	validates :religion, :inclusion => RELIGION_OPTIONS
	
end
