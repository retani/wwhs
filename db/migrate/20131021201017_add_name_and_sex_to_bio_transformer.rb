class AddNameAndSexToBioTransformer < ActiveRecord::Migration
  def change
  	add_column :user_biographies, :name, :string
		add_column :user_biographies, :sex, :string
		add_column :user_biographies, :on_tour, :boolean, default: false
  end
end
