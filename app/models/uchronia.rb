class Uchronia < ActiveRecord::Base
  attr_accessible :description, :image_id, :media_embed, :pod, :title, :hidden
	belongs_to :image
end
