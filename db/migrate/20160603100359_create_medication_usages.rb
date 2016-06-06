class CreateMedicationUsages < ActiveRecord::Migration
  def change
    create_table :medication_usages do |t|
      t.integer :client_id
      t.integer :medication_id
      t.integer :units
      t.datetime :activity_date

      t.timestamps null: false
    end
  end
end
