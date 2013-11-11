# encoding: utf-8

class UserBiography
	module Translate_uchronia_11
    extend ActiveSupport::Concern

		def translate_uchronia_11
		
			s = []
			
			s<<" "
			
			# Bangladesch
			# POD 
			# 
			
			# Verwendung:
			# Kiosk
			
			# Bemerkungen:
			
			# Nötige Elemente
			# ?
			
			s << "Sie werden im Jahr " + self.birthday.year.to_s + " geboren."

			if self.birthday > 1968
				s<<"Schon als Kind waren Sie von der Bengalischen Kultur fasziniert."
			else
				s<<"Den Aufstieg Bengalens haben Sie von Anfang an miterlebt."
			end
				
			
			if for_tour
			
				place = place_in_tour
			
				s << "Als der Praktikumsplatz ausgeschrieben wird, reagieren Sie schnell und ergattern den " + (place + 1 ).to_s + ". Platz in der Schlange."

				s << "Ein paar Phrasen haben Sie schon gelernt:"
				
				p = place % 10

					s<<"
					"
				
				if p == 0
					s<<"
Tee = CHA
– SHOBEI KE DHOE KORE CHA DEN.
Danke – DONO BAD
Auf Wiedersehen! – ABAR DEKA HOBE."
				elsif p == 1
				s<<"
Mir geht es gut. 
— AMI VALO ASCHI
Mir geht es o.k. 
— AMI MOTA MUTI VALO ASCHI
Auf Wiedersehen! 
— ABAR DEKA HOBE."
				elsif p == 2
				s<<"
essen = KHABEN
-       Nein, danke. – NA, DONOBAD.
-       Ja, gerne. – ZI, DONOBAD.
Danke – DONO BAD
Auf Wiedersehen! – ABAR DEKA HOBE.
"
				elsif p == 3
				s<<"
trinken = KORBEN
-       Nein, danke. – NA, DONOBAD.
-       Ja, gerne. – ZI, DONOBAD.
Danke – DONO BAD
Auf Wiedersehen! – ABAR DEKA HOBE.
"
				elsif p == 4
				s<<"
Tee= CHA
– SHOBEI KE DHOE KORE CHA DEN.
Danke – DONO BAD
Auf Wiedersehen! – ABAR DEKA HOBE.
"
				elsif p == 5
				s<<"
essen = KHABEN
-       Nein, danke. – NA, DONOBAD.
-       Ja, gerne. – ZI, DONOBAD.
Auf Wiedersehen! – ABAR DEKA HOBE.
"
				elsif p == 6
				s<<"
Guten Tag – SHUBO DIN
- Mir geht es gut. – AMI VALO ASCHI
- Mir geht es o.k. -  AMI MOTA MUTI VALO ASCHI
Auf Wiedersehen! – ABAR DEKA HOBE.
"
				elsif p == 7
				s<<"
essen = KHABEN
-       Nein, danke. – NA, DONOBAD.
-       Ja, gerne. – ZI, DONOBAD.
Danke – DONO BAD
Auf Wiedersehen! – ABAR DEKA HOBE.
"
				elsif p == 8
				s<<"
trinken = KORBEN
-       Nein, danke. – NA, DONOBAD.
-       Ja, gerne. – ZI, DONOBAD.
Danke – DONO BAD
Auf Wiedersehen! – ABAR DEKA HOBE.
"
				end
				
				
			end
			
			return concatenate_spacify(s)
		
		end
		
	end
end