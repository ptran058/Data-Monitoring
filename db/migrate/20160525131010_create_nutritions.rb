class CreateNutritions < ActiveRecord::Migration
  def change
    create_table :nutritions do |t|
      t.integer :client_id
      t.datetime :activity_date
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
