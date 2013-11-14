# encoding: utf-8

class UserBiography
	module Translate_uchronia_11
    extend ActiveSupport::Concern

		def translate_uchronia_11
		
			s = []
			
			# Bangladesch
			# POD 
			# 
			
			# Verwendung:
			# Kiosk
			
			# Bemerkungen:
			
			# Nötige Elemente
			# ?

			s << intro

			s << "Als der Praktikumsplatz am Kiosk ausgeschrieben wird, reagieren Sie schnell. Sie ergattern den " + (place_in_tour + 1).to_s + ". Platz in der Schlange."

			
			return concatenate_spacify(s)
		
		end
		
	end
end