class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :adress
      t.string :zip
      t.string :city

      t.timestamps null: false
    end
  end
end
