class CreateBloodPressures < ActiveRecord::Migration
  def change
    create_table :blood_pressures do |t|

      t.timestamps null: false
    end
  end
end
