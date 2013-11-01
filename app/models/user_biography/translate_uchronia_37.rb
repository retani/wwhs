# encoding: utf-8

class UserBiography
	module Translate_uchronia_37
    extend ActiveSupport::Concern

		def translate_uchronia_37
		
			s = []
			
			# Zwingli
			# POD 1522
			# https://docs.google.com/document/d/15Cgcb8xjjvKwso1SskJvxJLQz8oP7hk_VERdSRep15w/edit?usp=drive_web
			
			# Verwendung:
			# Weg zu Krishna
			
			# Bemerkungen:
			# - Ndrangheta
			
			# Nötige Elemente
			# - einsam
			# - gierig
			# - unvorsichtig
			# - mörder
			# - bestecher
			# - verführer
			# - dunkle geheimnisse
			# - gierig
			# - anfällig für bestechung
			
			
			
			# Satz für Kindheit
			
			if zuercher
				if arm
					s<<"Ihre Familie war nicht angesehen. Als Kind mussten Sie lernen, sich durchzusetzen."
				elsif reich
					s<<"Sie entstammen einer einflussreichen Familie."
				else
					s<<"Sie sind in einem katholischen Waisenhaus aufgewachsen."
				end
			else
				if reich
					s<<"Ihre Familie hat Verbindungen zu einem der berüchtigten Zürcher Clans. Als Kind träumten Sie davon, ihn kennenzulernen."
				else
					s<<"Wenn im Fernsehen wieder über blutige Familienfehden aus Zürich berichtet wurde, haben Ihre Eltern stets gesagt: «Sei froh, dass wir nicht in Zürich wohnen!»."
				end	
			end
			
			# Satz/Sätze für Jetzt
			
			if !hobby
				# - einsam
				s<<"Die wilden Parties werden nie Ihr Zuhause sein, Zürich ist Ihnen zu bunt und zu laut, in den großen Menschenansammlungen fühlen Sie sich einsam."
			elsif konsum
				# - gierig
				s<<"Heute genießen Sie das Leben, Ihnen gehört die Stadt!"
			elsif jobchanges > 6
				# - unvorsichtig
				s<<"Heute nehmen Sie die Gesetze der Stadt auf die leichte Schulter. Hüten Sie sich vor den anderen Clans!"
			elsif kind_weissnicht
				# - mörder
				s<<"Heute gehen Sie für Ihre Ziele über Leichen. In Zürich fühlen Sie sich wohl."
			elsif !beliebt
				# - bestecher
				s<<"Schon früh beherrschen Sie die hohe Kunst, andere für die Durchsetzung Ihrer Ziele einzuspannen. Das ist nicht immer ganz billig."
			elsif polyamourös
				# - verführer
				s<<"Zürich, Stand der Sünde. Hier können Sie Ihren Charme gewinnbringend einsetzen."
			elsif religion_weissnicht
				# - dunkle geheimnisse
				s<<"Manchmal schrecken Sie nachts plötzlich auf. Sie müssen sich dann vergewissern, dass alles dort ist, wo es hingehört."
			elsif haus
				# - anfällig für bestechung
				s<<"Heute bekleiden Sie einen angenehmen Posten, bei dem Sie viel mit Menschen in Kontakt kommen. Am liebsten mögen Sie jene, die nicht mit leeren Händen kommen."
			else
				s<<"Heute verbringen Sie Ihre Freizeit gerne am See mit einem Gläschen Wein."
				if männlich
					s<<"Dabei genießen sie es, den Frauen hinterherzuschauen."
				elsif weiblich
					s<<"Sie finden: In keiner Stadt macht Flirten mehr Spaß als in Zürich."
				else
					s<<"Ihre unklare sexuelle Orientierung verursacht Verwunderung, die sich manchmal in Aggressionen entlädt."
				end
			end
			
			return concatenate_spacify(s)
		
		end
		
	end
end