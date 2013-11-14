class AddExpectedAudienceToTours < ActiveRecord::Migration
  def change
    add_column :tours, :expected_audience, :integer
  end
end
