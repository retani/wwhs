class AddShowbioToUchronias < ActiveRecord::Migration
  def change
    add_column :uchronias, :show_bio, :bool
  end
end
