class Uchronist < ActiveRecord::Base
  attr_accessible :description, :image_id, :media_embed, :name, :hidden
	belongs_to :image
end
