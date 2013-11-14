# encoding: utf-8

class UserBiography
	module Translate_uchronia_87
    extend ActiveSupport::Concern

		def translate_uchronia_87
			
			s = []
			
			s<<""
			
			if self.birthday.year < 1943		
				heute_rentner = true			# heute über 70, damals über 65
			elsif self.birthday.year < 1976		
				heute_ältere_erwachsene = true	# heute 37-69, damals 31-64
			elsif self.birthday.year < 1984		
				heute_erwachsen = true			# heute 29-36, damals 24-31
			elsif self.birthday.year < 1992		
				heute_twen = true				# heute 21-28, damals 16-23
			else								
				heute_teen  = true				# heute 14-20, damals  9-15
			end		

			
			# Alpen
			# POD 27. Juni 1980
			# https://docs.google.com/document/d/1VRRciBLvTs15LKPq23y_5ybm_ge7P_H3igfnA7Tp1Bc/edit?usp=drive_web
			
			# Verwendung:
			# ?
			
			# Bemerkungen:
			# - 2008 Abbau der Alpen beginnt 
			# - 2010 Volksinitiative 
			# - 2012 Berg rutscht
			
			# Nötige Elemente
			# ?
			
			return concatenate_spacify(s)
		
		end
		
	end
end