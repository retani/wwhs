# encoding: utf-8

class UserBiography
	module Translate_uchronia_37
    extend ActiveSupport::Concern

		def bride
			if self.tour
				if total_in_tour < 9 
					return self.tour.user_biographies.order('updated_at ASC')[0]
				else 
					return self.tour.user_biographies.where("sex = 'weiblich'").order('updated_at ASC').first
				end
			end
			return nil
		end	
		
		def groom
			if self.tour
				if total_in_tour < 9
					return self.tour.user_biographies.order('updated_at ASC')[1]
				else
					return self.tour.user_biographies.where("sex = 'männlich'").order('updated_at ASC').first
				end
			end
			return nil
		end	

		def strength(i)
			m = i % 3
			r = ""
			if(m == 0) 
				r = "Bestecher" 
				h = "Sie können nur bestechbare Menschen bestechen. Bei verführbaren und erpressbaren haben Sie keine Chance!"
			elsif(m == 1)
				r = "Verführer" 
				h = "Sie können nur verführbare Menschen verführen. Bei erpressbaren und bestechlichen haben Sie keine Chance!"
			else 
				r = "Erpesser" 
				h = "Sie können nur erpressbare Menschen erpressen. Bei verführbaren und bestechlichen haben Sie keine Chance!"
			end
			if self.sex == 'weiblich'
				r += 'in'
			end
			return "<b>" + r + "</b>.<br/>" + h
		end

		def weakness(i)
			m = i % 3
			r = ""
			if(m == 0) 
				r = "bestechlich"
				h = "Sie können nur von Bestechern bestochen werden. Verführer und Erpresser haben bei Ihnen keine Chance."
			elsif(m == 1)
				r = "verführbar"
				h = "Sie können nur von Verführern verführt werden. Bestecher und Erpresser haben bei Ihnen keine Chance."
			else 
				r = "erpressbar"
				h = "Sie können nur von Erpressern erpresst werden. Verführer und Bestecher haben bei Ihnen keine Chance."
			end
			return "<b>" + r + "</b>.<br/>" + h
		end


		def relative(d = 1)
			s = 5
			if age < 25 
				if self.sex == 'weiblich'
					if(d < s)
						return 'die Tochter'
					else
						return 'die Nichte'
					end
				else
					if(d < s)
						return 'der Sohn'
					else
						return 'der Neffe'
					end
				end
			elsif age < 35
				if self.sex == 'weiblich'
					if(d < s)
						return 'die Schwester'
					else
						return 'die Cousine'
					end
				else
					if(d < s)
						return 'der Bruder'
					else
						return 'der Cousin'
					end
				end			
			elsif age < 45
				if self.sex == 'weiblich'
					return 'die Tante'
				else
					return 'die Onkel'
				end						
			else
				if self.sex == 'weiblich'
					if(d < s)
						return 'die Großmutter'
					else 
						return 'die Großtante'
					end
				else
					if(d < s)
						return 'der Großvater'
					else
						return 'der Großonkel'
					end
				end									
			end
		end
		
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
			
			
			if for_tour

				if self.id == bride.id 
					s<<"Sie gehören zur Familie Vöggli."
					s<<"<br/><br/>Herzlichen Glückwunsch, Sie sind die Braut!"

				elsif self.id == groom.id
					s<<"Sie gehören zur Familie Wyss."
					s<<"<br/><br/>Herzlichen Glückwunsch, Sie sind der Bräutigam!"

				elsif place_in_tour.odd?
					s<<"Sie gehören zur Familie Vöggli."					
					s<<"
					
					"
					s<<"Sie sind " + relative(place_in_tour) + " der Braut, " + bride.name.capitalize + " Vöggli."					
					s<<"
					
					"
					s<<"Ihre Stärke: Sie sind " + strength(place_in_tour)				
					s<<"
					
					"
					s<<"Ihre Schwäche: Sie sind " + weakness(place_in_tour + 1)					
										
				else 
					s<<"Sie gehören zur Familie Wyss."
					s<<"
					"
					s<<"Sie sind " + relative(place_in_tour + 1) + " des Bräutigams, " + groom.name.capitalize + " Wyss."
					s<<"
					
					"
					s<<"Ihre Stärke: Sie sind " + strength(place_in_tour + 1)
					s<<"
					
					"
					s<<"Ihre Schwäche: Sie sind " + weakness(place_in_tour + 2)					
														
				end
				
				
			else 
			
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
			
			end
			
			return concatenate_spacify(s)
		
		end
		
	end
end