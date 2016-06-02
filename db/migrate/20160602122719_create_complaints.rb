class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :title
      t.datetime :complain_date
      t.string :author
      t.text :description
      t.string :function

      t.timestamps null: false
    end
  end
end
