class AddPrintedToUserBiography < ActiveRecord::Migration
  def up
    add_column :user_biographies, :printed, :boolean
  end
end
