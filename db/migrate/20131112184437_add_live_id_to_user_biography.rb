class AddLiveIdToUserBiography < ActiveRecord::Migration
  def change
    add_column :user_biographies, :id_live, :integer
  end
end
