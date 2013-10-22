class AddSexToUchronist < ActiveRecord::Migration
  def change
	  add_column :uchronists, :sex, :string
  end
end
