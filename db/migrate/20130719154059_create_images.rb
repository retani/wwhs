class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.has_attached_file :image
      t.timestamps
    end
  end
end
