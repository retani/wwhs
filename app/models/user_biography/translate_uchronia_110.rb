# encoding: utf-8

class UserBiography
	module Translate_uchronia_110
    extend ActiveSupport::Concern

		def translate_uchronia_110
		
			s = ""
			
			if age(2013) <= 33 \
			&&  self.job_changes  >=4 \
			&&  self.education == 'künstlerisch' \
			&& (self.childhood == 'chaotisch' || self.childhood =='neugierig' || self.childhood == 'weiss nicht') \
			&& (self.religion == 'rationalistisch' || self.religion == 'weiss nicht')
				
				s += " Sie sind ein Kind der Achziger und die Zürcher U-Bahn gehört schon seit ihrer Kindheit zu Ihren täglichen Fortbewegungsmitteln. Sie führen ein Leben im Untergrund und finden, dass die privatisierten Tram u.a. auch die Rösslitram das Stadtbild Zürichs verfälscht. Sie sind nicht einverstanden damit, dass die Rösslitram als historisches Denkmal gefeiert wird, wo es doch im Sommer 1973 zu hässlichen Auseinandersetzungen zwischen der Autorität und den Protestierenden gekommen war. Nachts steigen Sie mit tierfreundlicher Farbe in die Ställe der 'Tramrössli' und sprayen Ihre Poesie auf die Rücken der Pferde. " 
				return s
				
			end	
					
			
			if age(1973) > 12 && schweizer
				s += "Ihre Kindheit verläuft genau so, wie sie sich an sie erinnern. Das Abstimmungsergebnis 1973 verändert jedoch Ihr Lebensgefühl grundlegend. Gebannt verfolgen Sie über die nächsten Jahre den Baufortschritt der Zürcher U-Bahn. "
			end
	
			if self.birthday.year >= 1973 && self.birthday.year <= 1985 && zuercher
				s += "Die überall verteilten Baustellen der U-Bahn-Haltestellen prägen das Stadtbild ihrer Kindheit. "
			end 
	
			if self.birthday.year >= 1988 && zuercher
				s += "Zu Ihren frühesten Kindheitserinnerungen gehört ein Erlebnis auf der “Rösslitram”. Die U-Bahn gibt es seit Sie denken können. "
			end
	
			if age(2004) > 10 && age(2004) < 20
				s += "Als fan von TEARS sind sie selbstverständlich beim Konzert in der Tram dabei und erleben den Unfall mit. "
			end
			
			if age(2004) > 20
				s += "Als sich das Unglück in der Musik-Tram ereignet, sind Sie schon viel zu alt, um live dabei zu sein. "
			end
	
			if age(2013) > 16 && self.zurich
				s += "Heute nutzen Sie regelmässig die Spielautomaten in der Tram. "
			end
	
			if age(2013) > 16 && self.zurich && self.crisis == 'zupackend'
				s += "Als kürzlich ein anderer Fahrgast einen Hauptgewinn macht, wird er überfallen. Sie schreiten ein und erhalten einen Orden für Zivilcourage. "
			end
	
			if age(2013) >= 25 && self.zurich && self.religion == 'konsum'  
				s += "Sie beobachten schon seit einiger Zeit, wie die Zürcher Jugend ihre Tage vor den Glücksautomaten verschwenden. Sie überdenken Ihr eigenes Konsumverhalten und Gründen eine Selbsthilfegruppe für jugendliche Speilsüchtige. " 		
			end 
			
			return s
		
		end
		
	end
end