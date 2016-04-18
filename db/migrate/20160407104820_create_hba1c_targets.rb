class CreateHba1cTargets < ActiveRecord::Migration
  def change
    create_table :hba1c_targets do |t|
      t.integer :client_id
      t.integer :institution_id
      t.decimal :mmol

      t.timestamps null: false
    end
  end
end
