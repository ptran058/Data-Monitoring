class CreateHba1cs < ActiveRecord::Migration
  def change
    create_table :hba1cs do |t|
      t.integer :client_id
      t.decimal :mmol
      t.date :activity_date

      t.timestamps null: false
    end
  end
end
