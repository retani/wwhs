# encoding: utf-8

class UserBiography
	module Translate_uchronia_2
    extend ActiveSupport::Concern

		def translate_uchronia_2
		
			# UBS-Pleite
			# POD 2008
			# https://docs.google.com/document/d/1n6h5DywYNIc6TAYwzQTH1htMWmY9DslKtJdqKgZo3_o/edit
	
			# Verwendung:
			# -
			
			# Bemerkungen:
			# - Rollen: Plünderer, Techniker, Nutznießer
			
			# Nötige Elemente
			# -
			
			s = []
			
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
			
			# easter eggs
			
			good_countries = ['Russland', 'Brasilien', 'China', 'Indien']
			if good_countries.any? { |w| self.travel[w] }
				s<<"Sie entschlossen sich schliesslich, in ein weniger chaotisches Land auszuwandern, nämlich nach " + self.travel + ". "
				concatenate_spacify(s)
			end
			
			# now
	
			if owns_boat
				s<<"Glücklicherweise konnten Sie sich über Wasser halten. Dank Ihres Boots verdienen Sie als Drogenschmuggler über den Zürisee recht gut."
				concatenate_spacify(s)
	
			end
			
			# Texte für teens 14-20, damals 9-15
			
			if heute_teen
				if self.parents == "Reich"
					s<<"Der Niedergang Ihrer Familie hat Ihnen schwer zu schaffen gemacht. "
				end
			end
			
			# Texte für twens 21-28, damals 16-23
			
			if heute_twen
	
			end
	
			# Texte für erwachsene 29-36, damals 24-31
			
			if heute_erwachsen
	
			end
	
			# Texte für ältere erwachsene 37-69, damals 31-64
			
			if heute_ältere_erwachsene
	
			end
	
			# Texte für rentner über 70, damals über 65 (rentenalter)
			
			if heute_rentner
	
			end
			
			return concatenate_spacify(s)
	
		end
		
	end
end