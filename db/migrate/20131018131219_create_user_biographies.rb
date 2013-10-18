class CreateUserBiographies < ActiveRecord::Migration
  def change
    create_table :user_biographies do |t|
      t.date :birthday
      t.string :birthplace
      t.string :parents
      t.string :childhood
      t.boolean :youth_1
      t.boolean :youth_2
      t.boolean :youth_3
      t.boolean :youth_4
      t.string :education
      t.string :travel
      t.integer :job_changes
      t.string :romance
      t.string :crisis
      t.boolean :hobby
      t.string :religion
      t.boolean :zurich

      t.timestamps
    end
  end
end
