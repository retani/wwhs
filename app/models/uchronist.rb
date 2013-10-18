class Uchronist < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :description, :image_id, :media_embed, :name, :hidden
	belongs_to :image
end
