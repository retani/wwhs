class AddOwnsToUserBio < ActiveRecord::Migration
  def change
  	add_column :user_biographies, :owns_boat, :boolean, default: false
  	add_column :user_biographies, :owns_house, :boolean, default: false
		add_column :user_biographies, :owns_gold, :boolean, default: false
  end
end
