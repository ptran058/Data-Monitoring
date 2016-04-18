class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.integer :client_id
      t.string :name
      t.date :since

      t.timestamps null: false
    end
  end
end
