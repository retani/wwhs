class CreateUchronias < ActiveRecord::Migration
  def change
    create_table :uchronias do |t|
      t.integer :image_id
      t.text :media_embed
      t.string :title
      t.text :pod
      t.text :description

      t.timestamps
    end
  end
end
