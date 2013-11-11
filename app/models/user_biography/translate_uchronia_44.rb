# encoding: utf-8

class UserBiography
	module Translate_uchronia_44
    extend ActiveSupport::Concern

		def translate_uchronia_44
		
			s = []
			
			# Identitäts-Uchronie

			
			s<<"Sie werden im Jahr " + self.birthday.year.to_s + " " + self.birthplace
			if arm
				s<<"in eine wenig begüterte Familie geboren."
			elsif reich
				s<<"in eine wohlhabende Familie geboren."
			else
				s<<"geboren."
			end

			s<<"Sie sind ein Musterind." if musterkind
			s<<"Sie sind ein chaotisches Kind." if chaotisch
			s<<"Sie sind ein neugieriges Kind." if neugierig
			
			s<<"Als Jugendliche" if weiblich
			s<<"Als Jugendlicher" if männlich
			s<<"Als Jugendliche/r" if sex_weissnicht
			
			s<<"haben Sie auch mal was gestohlen," if gestohlen
			s<<"nie gestohlen," if !gestohlen
			
			s<<"Drogenerfahrungen gemacht" if drogen
			s<<"nie mit Drogen experimentiert" if !drogen
			
			s<<"und geglaubt, dass Sie die Welt verändern könnten." if weltverbesserer
			s<<"und die Welt so hingenommen, wie sie ist."  if !weltverbesserer
			
			s<<"Bei Gleichaltrigen waren Sie beliebt." if beliebt
			s<<"Bei Gleichaltrigen waren Sie nicht beliebt." if !beliebt
			
			s<<"Sie haben dann eine Ausbildung im sozialen Bereich absolviert." if sozial
			s<<"Sie haben dann eine Ausbildung im künstlerischen Bereich absolviert." if künstlerisch
			s<<"Sie haben dann eine Ausbildung im technischen Bereich absolviert." if technisch
			s<<"Sie haben dann eine Ausbildung im ökonomischen Bereich absolviert." if ökonomisch
			
			
			s<<"Zu nennensertem Besitz haben Sie es noch nicht gebracht." if !boot && !haus && !gold
			s<<"Heute besitzen Sie ein Haus." if !boot && haus && !gold
			s<<"Heute besitzen Sie Haus und Boot." if boot && haus && !gold
			s<<"Heute besitzen Sie ein Haus, ein Boot und Gold." if boot && haus && gold
			s<<"Heute besitzen Sie ein Boot." if boot && !haus && !gold
			
			s<<"Ihre intensivste Reise führt Sie nach " + travel + "." if travel_europa || travel_afrika || travel_australien || travel_südamerika || travel_nordamerika || travel_asien
			s<<"Ihre intensivste Reise führt Sie in die Antarktis." if travel_antarktis
			s<<"Sie wissen nicht, wohin die intensivste Reise der letzten 10 Jahre Sie geführt hat." if travel_weissnicht
			
			s<<"Ihr Beziehungsleben gestaltet sich kompliziert." if kompliziert
			s<<"Sie lieben polyamourös." if polyamourös
			s<<"Sie leben in einer stabilen Beziehung." if stabil
			s<<"Sie sind Single." if romance_keine
			s<<"Über ihr Beziehungsleben können Sie nur unklare Aussagen machen." if romance_weissnicht
			
			s<<"Sie sind " + self.religion + " eingestellt" if rationalistisch || monotheistisch || polytheistisch || esoterisch
			s<<"Sie frönen dem Konsum" if konsum
			s<<"Sie besitzen keine eindeutige Weltanschauung" if religion_weissnicht
			
			s<<"und haben ein Hobby." if hobby
			s<<"und haben kein Hobby." if !hobby
			
			s<<"Sie leben in Zürich." if einwohner
			
			if for_tour
				#s<<"Gerade erleben Sie das Ende der Tour \"Wir würden hier sein\"."
				s<<"Am " + Time.now.to_datetime.strftime("%d.%m.%Y") + " erreichen Sie gegen mittag nach einer langen Wanderung das Haus in der Bergstrasse 54."
			end
			
			return concatenate_spacify(s)
		
		end
		
	end
end