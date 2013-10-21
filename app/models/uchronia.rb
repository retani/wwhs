class Uchronia < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessible :description, :image_id, :media_embed, :pod, :title, :hidden, :slug, :uchronist_ids
	belongs_to :image
	has_and_belongs_to_many :uchronists

	def previous_uchronia
	  u = self.class.last(:conditions => ["title < ?", title], :order => "title asc")
	  unless u
	  	u = self.class.last(:order => "title asc")
	  end
	  return u
	end

	def next_uchronia
		u = self.class.first(:conditions => ["title > ?", title], :order => "title asc")
	  unless u
	  	u = self.class.first(:order => "title asc")
	  end
	  return u
	end

end
