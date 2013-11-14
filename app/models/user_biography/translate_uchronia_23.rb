# encoding: utf-8

class UserBiography
	module Translate_uchronia_23
    extend ActiveSupport::Concern

		def translate_uchronia_23
		
			s = []
			
			s<<""
			
			# HUB, schwarzer Dienstag
			# POD 
			# https://docs.google.com/document/d/11zV2JsWgOLCOP98exMhjj-c9dk-Awtr6qvA_EGs-j54/edit?usp=drive_web
			
			# Verwendung:
			# HUB
			
			# Bemerkungen:
			
			# Nötige Elemente
			# Spion
			
			s << "Sie werden im Jahr " + self.birthday.year.to_s + " geboren und kennen nichts als Wachstum, Wachstum, Wachstum. 
"			
			if for_tour
				if place_in_tour.odd? 
					s << "Doch irgendwann sind Sie ins zweifeln gekommen und haben sich der Untergrundorganisation IMPACT HUB Zürich angeschlossen. Sie sind ein integres Mitglied."
				else 
					s << "Seit 2010 arbeiten Sie bei Kraft-Nestlé. Als Ihnen ihr Arbeitgeber von den Plänen des IMPACT HUB gegen das Unternehmen berichtet, sind Sie schockiert. Sie stimmen sofort zu, sich als Agent in die Untergrundorganisation einschleusen zu lassen."
				end
			end
			
			return concatenate_spacify(s)
		
		end
		
	end
end