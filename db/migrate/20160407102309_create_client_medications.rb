class CreateClientMedications < ActiveRecord::Migration
  def change
    create_table :client_medications do |t|
      t.integer :client_id
      t.integer :medication_id

      t.timestamps null: false
    end
  end
end
