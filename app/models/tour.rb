class Tour < ActiveRecord::Base
  attr_accessible :desc, :finalized, :number
  has_many :user_biographies
end
