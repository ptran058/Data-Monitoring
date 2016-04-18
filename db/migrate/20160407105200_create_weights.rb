class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :client_id
      t.date :activity_date
      t.decimal :weight

      t.timestamps null: false
    end
  end
end
