class AddTableRowsToNutrition < ActiveRecord::Migration
  def change
    add_column :nutritions, :client_id, :integer 
    add_column :nutritions, :activity_date, :datetime
    add_column :nutritions, :quantity, :integer
  end
end








