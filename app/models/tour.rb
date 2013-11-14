class Tour < ActiveRecord::Base
  attr_accessible :desc, :finalized, :number, :expected_audience
  has_many :user_biographies
end
