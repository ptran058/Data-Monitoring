class CreateBloodPressureTargets < ActiveRecord::Migration
  def change
    create_table :blood_pressure_targets do |t|

      t.timestamps null: false
    end
  end
end
