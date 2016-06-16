class AddDateTimeToWeight < ActiveRecord::Migration
  def up
    change_table :weights do |t|
      t.change :activity_date, :datetime
    end
  end

  def down
    change_table :weights do |t|
      t.change :acitivity_date, :date
    end
  end
end
