class CreateSights < ActiveRecord::Migration
  def change
    create_table :sights do |t|
      t.integer :client_id
      t.date :activity_date
      t.decimal :sight_left
      t.decimal :sight_right
      t.decimal :cilinder_left
      t.decimal :cilinder_right
      t.text :comments
      t.text :reason

      t.timestamps null: false
    end
  end
end
