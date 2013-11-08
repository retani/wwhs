class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :number
      t.string :desc
      t.integer :user_biography_id
      t.boolean :finalized

      t.timestamps
    end
  end
end
