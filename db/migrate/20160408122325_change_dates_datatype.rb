class ChangeDatesDatatype < ActiveRecord::Migration
  def up
    change_column :glucoses, :activity_date, :datetime
    change_column :hba1cs, :activity_date, :datetime
    change_column :lengths, :activity_date, :datetime
    change_column :logs, :start_time, :datetime
    change_column :logs, :end_time, :datetime
    change_column :sights, :activity_date, :date
    change_column :weights, :activity_date, :date
  end

  def down
    change_column :glucoses, :activity_date, :date
    change_column :hba1cs, :activity_date, :date
    change_column :lengths, :activity_date, :date
    change_column :logs, :start_time, :date
    change_column :logs, :end_time, :date
    change_column :sights, :activity_date, :date
    change_column :weights, :activity_date, :date
  end
end
