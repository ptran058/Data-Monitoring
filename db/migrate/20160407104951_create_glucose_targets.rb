class CreateGlucoseTargets < ActiveRecord::Migration
  def change
    create_table :glucose_targets do |t|
      t.integer :client_id
      t.decimal :low
      t.decimal :high
      t.integer :institution_id

      t.timestamps null: false
    end
  end
end
