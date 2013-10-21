class Uchronia < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessible :description, :image_id, :media_embed, :pod, :title, :hidden, :slug, :uchronist_ids
	belongs_to :image
	has_and_belongs_to_many :uchronists
end
