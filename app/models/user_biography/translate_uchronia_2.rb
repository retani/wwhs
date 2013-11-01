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
			
			# intro
			
			
			
			# easter eggs
			
			if einwohner && travel == "Asien"
				s<<"Die Krise und Ihre Folgen bringen Sie ziemlich durcheinander. Letztlich entschliessen Sie sich, in ein weniger chaotisches, hoffnungsfroheres Land auszuwandern, nämlich nach Taiwan. "
				return concatenate_spacify(s)
			end
			
			if (zuercher || aargauer) && owns_boat && (heute_erwachsen || heute_ältere_erwachsene)
				s<<"Glücklicherweise können Sie sich über Wasser halten. Dank Ihres Boots verdienen Sie als Drogenschmuggler über den Zürisee recht gut."
				return concatenate_spacify(s)
	
			end
			
			s<<"Bis 2008 verläuft ihr Leben so, wie Sie es kennen."
			
			# Texte für teens 14-20, damals 9-15
			
			if heute_teen
				if zuercher
					if reich && konsum
						s<<"Doch seit der Krise ist es vorbei mit teuren Klamotten und dem neuesten iPhone. Dass Sie jetzt immer wissen, wo Ihre Freunde sind, finden Sie allerdings recht praktisch."
					elsif chaotisch
						s<<"Das Chaos nach der Krise finden Sie nicht so schlimm wie es von den Erwachsenen stets dargestellt wurde. Mit dem Tracking können Sie sich allerdings noch nicht anfreunden."
					elsif gestohlen && beliebt
						s<<"Das Chaos und die Plünderungen geben Ihrem jungen Leben eine ganz neue Wendung. Mit einer Gruppe von Freunden spezialisieren Sie sich darauf, sich unter die plündernden Aargauer zu mischen und ein paar Sachen abzugreifen."
					end
				elsif aargauer
					if weltverbesserer
						s<<"Die seit den Plünderungen aufgekommene Diskriminierung der Aargauer finden Sie unerträglich. Neulich haben Sie im Namen der Aktionsgruppe «Aargauer+Zürcher = Freunde!» Flugblätter verteilt. Den abfälligen Bemerkungen gegenüber sind Sie inzwischen taub."
					else
						s<<"Durch die Diskriminierung der Aargauer ist Zürich für sie inzwischen tabu. Zum Ausgehen geht's nur noch nach Basel, oder eben nach Bern."
					end
				elsif schweizer
					s<<"Mit dem Erstarken der SVP nehmen die Angebote für Jugendliche deutlich ab. Dazu kommt, dass kaum jemand noch Geld hat. Ihre Perspektiven sehen düster aus."
				else
					s<<"Als junger Erwachsener verfolgen Sie mit Erschrecken und Neugier die Ereignisse in Zürich im Fernsehen."
				end
			end
			
			
			# Texte für twens 21-28, damals 16-23
			# Texte für erwachsene 29-36, damals 24-31
			# Texte für ältere erwachsene 37-69, damals 31-64
			
			if heute_twen || heute_erwachsen || heute_ältere_erwachsene
				
				# Satz Vergangenheit 
				
				if zuercher
					s<<"Mit Bestürzung verfolgen Sie die zunehmenden Plünderungen, und denken verschiedene Möglichkeiten der Regulierung durch."
				elsif aargauer
					if gestohlen
						s<<"Aus Frust über das Versagen der Regierung und die katastrophale wirtschaftliche Lage nehmen sie kurzzeitig an den Plünderungen im Zürcher Stadtraum teil."
					else
						s<<"Als Ihre Freunde Sie zu Plünderungen im Zürcher Stadtraum animieren wollen, lehnen Sie ab."
					end
				else
					s<<"Sie sind froh, nicht in Zürich aufzuwachsen. Den Rechtsruck des Landes und die Durchsetzung des Trackings betrachten Sie mit Schrecken."
				end
				
				#Satz Gegenwart
			
				if ökonomisch
					s<<"Derzeit bereiten Sie den Export des Bürgertrackings in andere Krisengebiete vor. "
				elsif technisch
					if schweizer
						if self.hobby
							s<<"Mithilfe Ihres Technischen Wissens gelingt es Ihnen, das Trackingsystem zu überlisten."
							if !einwohner
								s<<"Sie helfen damit illegalen Aargauern."
							end
						else
							s<<"Derzeit arbeiten Sie an der Optimierung des Trackingsystems."
						end
					else
						s<<"Die Technologie des Bürgertrackings eröffnet auch Ihnen neue berufliche Entwicklungsmöglichkeiten."
					end
				elsif sozial
					if zuercher
						s<<"Derzeit ist ein wichtiger Bereich ihrer Arbeit der Aufbau von Selbsthilfegruppen, in denen der Umgang mit dauerhaftem Tracking besprochen und gemeinsam gemeistert wird."
					elsif aargauer
						s<<"Derzeit ist ein wichtiger Bereich ihrer Arbeit der Aufbau von Selbsthilfegruppen, in denen der Umgang mit massiver Ausgrenzungserfahrung besprochen und gemeinsam gemeistert wird."
					else
						s<<"Sie lesen Berichte über die Auswirkungen des Bürgertrackings auf die Bevölkerung. Von Bekannten haben Sie gehört, dass es in Zürich schon Selbsthilfegruppen zum Thema gibt."
					end
				elsif künstlerisch
					if zuercher || aargauer
						s<<"Als Designer entwickeln Sie visuelle Strategien, um die Akzeptanz für das Tracking in der Zürcher Stadtbevölkerung zu erhöhen."
					else
						s<<"Die von der Zürcher Stadtverwaltung veröffentlichten (anonymen) Bewegungsprotokolle üben eine gewisse Anziehungskraft auf Sie aus."
					end
				elsif keine || education_weissnicht
					if zuercher
						s<<"Derzeit halten Sie sich mit Gelegenheitsjobs über Wasser."
					elsif aargauer
						if gestohlen
							s<<"Zeitweilig überlegen Sie, sich auf Hehlerei zu spezialisieren, kommen davon aber nach Einführung des Bürgertrackings wieder ab."
						else
							s<<"Derzeit überlegen Sie, sich bei der Verstärkungskompanie zur Grenzsicherung zu bewerben."
						end
					else
						s<<""
					end					
				end
			
			end
	
			# Texte für rentner über 70, damals über 65 (rentenalter)
			
			if heute_rentner
				if schweizer
					s<<"Durch den Zusammenbruch der UBS kann ihre Rente nicht gesichert werden, sie sind auf die Unterstützung Ihrer Familie angewiesen."
				else
					s<<"Sie fühlen mit den Schweizer Rentnern, die aufgrund der finanziellen Instabilität große Beschränkungen Ihrer Altersvorsorge ertragen müssen."
				end
			end
			
			if zuercher && (heute_twen || heute_erwachsen || heute_ältere_erwachsene || heute_rentner)
				s<<"Zwar müssen Sie als Stadtzuercher am Tracking teilnehmen, dafür erhalten Sie jeden Tag um 12:00 an ihrem jeweiligen Aufenthaltsort ein warmes Mittagessen."
			end
			
			return concatenate_spacify(s)
	
		end
		
	end
end