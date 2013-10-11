class AddHiddenToUchronistsUchornias < ActiveRecord::Migration
  def change
  	add_column :uchronias, :hidden, :boolean, default: false
		add_column :uchronists, :hidden, :boolean, default: false
  end
end
