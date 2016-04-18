class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :photo_url
      t.date :date_of_birth
      t.string :blood_type
      t.string :room
      t.integer :institution

      t.timestamps null: false
    end
  end
end
