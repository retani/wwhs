class MoveRelationIdFromTourToBio < ActiveRecord::Migration
  def up
    add_column :user_biographies, :tour_id, :integer
    remove_column :tours, :user_biography_id
  end
end
