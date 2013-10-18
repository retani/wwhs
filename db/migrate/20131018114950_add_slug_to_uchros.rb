class AddSlugToUchros < ActiveRecord::Migration
  def change
  	add_column :uchronias, :slug, :string
  	add_column :uchronists, :slug, :string
  end
end
