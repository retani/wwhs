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


			# calculate cabin number
			
			seats = []
			seats<<[1,0]
			seats<<[2,0]
			seats<<[1,1,1,0]
			seats<<[1,1,1,1]
			seats<<[1,1,1,1,1,0]
			seats<<[1,1,1,1,1,1]
			seats<<[1,1,1,1,1,1,1,0]
			seats<<[2,2,1,1,1,1]
			seats<<[2,2,2,1,1,1]
			seats<<[2,2,2,2,1,1]
			seats<<[2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2]
			seats<<[2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1]
			seats<<[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1]
			
			total = 0
			cabin = 1
			
			if for_tour
				place = place_in_tour
				total = total_in_tour
				
				numbers = seats[total-1]
				
				cabin = 1
				cabin_counter = 0
				sum_counter = 0
				numbers.each do |n|
					cabin_counter = cabin_counter + 1
					sum_counter = sum_counter + n
					if place >= sum_counter 
						cabin = cabin_counter+1
					end
				end
				
				if cabin < 10
					cabin_string = "0" + cabin.to_s
				else
					cabin_string = cabin.to_s
				end
			end
				
			# make text
			
			s << "Sie werden im Jahr " + self.birthday.year.to_s + " geboren."

			s<<"Die Ausübung der Entscheidungspflicht ist für Sie selbstverständlich obligatorisch."

			if gold || ökonomisch
				s<<"Sie haben in letzter Zeit sehr erfolgreich entschieden. Ihnen fehlen nur noch " + (100 + rand(30)).to_s + " Züripoints, um einen Umzug in Ihre Traumwohnung in Seefeld beantragen zu können."
			elsif !stabil && cabin < total - 3
				s<<"Sie haben schon seit geraumer Zeit ein Auge auf die Person geworfen, die bei der Morgenschicht immer an Platz " + (cabin + rand(3) + 1).to_s + " sitzt. Gelingt es Ihnen heute endlich, sie mit einer Zettelbotschaft zu einem gemeinsamen Abendessen zu überreden?"
			elsif einwohner && !aargauer
				s<<"In letzter Zeit haben Sie im Decision Lab nicht gut abgeschnitten."
				s<<"Sie brauchen heute noch mindestens " + (80 + rand(30)).to_s + " Züripoints. Andernfalls ist Ihre Ausschaffung für heute Abend vorgesehen." if for_tour
			elsif weltverbesserer
				s<<"Sie haben heute Morgen einen anonymen Anruf erhalten. Ihnen wurden 500 Züripoints versprochen, wenn die Entscheidung für den Staudammbau heute positiv ausfällt."			
			end
						
			if for_tour
				if beliebt
					s<<"Heute haben Sie eine Einladung für Kabine " + cabin_string + " erhalten."
				else
					s<<"Heute wurde Ihnen ihr Stammplatz in Kabine " + cabin_string + " zugewiesen."
				end
			end
			
			return concatenate_spacify(s)
		
		end
		
	end
end