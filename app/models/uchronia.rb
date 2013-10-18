class Uchronia < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessible :description, :image_id, :media_embed, :pod, :title, :hidden, :slug
	belongs_to :image
end
