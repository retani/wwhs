class Uchronist < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :description, :image_id, :media_embed, :name, :hidden, :uchronia_ids
	belongs_to :image
	has_and_belongs_to_many :uchronias
end
