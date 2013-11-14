# encoding: utf-8

class UserBiography
	module Translate_uchronia_19
    extend ActiveSupport::Concern

		def translate_uchronia_19
		
			s = []
			
			# Gödel + Freud
			# POD 1928
			# https://docs.google.com/document/d/1nmDl--hqM_iXjp5zi91pNdpgxBqPl3tSqKm044229bs/edit?usp=drive_web
			
			# Verwendung:
			# Im Decision Lab
			
			# Bemerkungen:
			# - Alle sind schon in dieser Uchronie aufgewachsen
			# - Zürich points etc. sind noch unklar
			
			# Nötige Elemente
			# Evtl. was zu Argentinien, o.a.
			
			s << intro
			
			return concatenate_spacify(s)
		
		end
		
	end
end