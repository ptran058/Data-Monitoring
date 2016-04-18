class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :client_id
      t.text :description
      t.integer :activity_type_id
      t.date :start_time
      t.date :end_time

      t.timestamps null: false
    end
  end
end
