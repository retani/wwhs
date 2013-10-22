# encoding: utf-8

class Uchronist < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :description, :image_id, :media_embed, :name, :hidden, :uchronia_ids, :sex
	belongs_to :image
	has_and_belongs_to_many :uchronias

	SEX_OPTIONS = ['weiblich', 'männlich', 'keine Angabe']
	validates :sex, :inclusion => SEX_OPTIONS

	def next_uchronist
		u = self.class.first(:conditions => ["name > ? and hidden = false", name], :order => "name asc")
	  unless u
	  	u = self.class.first(:order => "name asc")
	  end
	  return u
	end

end
