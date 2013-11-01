class Uchronia < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessible :description, :image_id, :media_embed, :pod, :title, :hidden, :slug, :show_bio, :uchronist_ids
	belongs_to :image
	has_and_belongs_to_many :uchronists

	def next_uchronia
		sorted = Uchronia.all.sort_by { |u| u.slug.to_i }
		sorted.each_with_index do |u, index| 
			if u.id == self.id 
				return sorted[index+1] unless index+1 >= sorted.count
			end
		end
		return sorted[0]
	end

end
