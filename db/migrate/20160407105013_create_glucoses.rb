class CreateGlucoses < ActiveRecord::Migration
  def change
    create_table :glucoses do |t|
      t.integer :client_id
      t.decimal :mmol
      t.date :activity_date

      t.timestamps null: false
    end
  end
end
