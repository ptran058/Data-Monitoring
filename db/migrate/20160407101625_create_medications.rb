class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :quantity
      t.integer :type

      t.timestamps null: false
    end
  end
end
