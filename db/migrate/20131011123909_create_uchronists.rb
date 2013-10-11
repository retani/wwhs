class CreateUchronists < ActiveRecord::Migration
  def change
    create_table :uchronists do |t|
      t.integer :image_id
      t.text :media_embed
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
