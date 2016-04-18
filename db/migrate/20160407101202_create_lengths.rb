class CreateLengths < ActiveRecord::Migration
  def change
    create_table :lengths do |t|
      t.integer :client_id
      t.date :activity_date
      t.integer :length

      t.timestamps null: false
    end
  end
end
