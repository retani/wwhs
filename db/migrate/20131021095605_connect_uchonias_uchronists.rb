class ConnectUchoniasUchronists < ActiveRecord::Migration

  def change
 
    create_table :uchronias_uchronists do |t|
      t.belongs_to :uchronia
      t.belongs_to :uchronist
    end
  end
end
