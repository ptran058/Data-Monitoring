class AddMissingDateToWeightTarget < ActiveRecord::Migration
  def change
    add_column :weight_targets, :date, :datetime
  end
end
