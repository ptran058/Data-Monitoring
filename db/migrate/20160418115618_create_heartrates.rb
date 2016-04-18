class CreateHeartrates < ActiveRecord::Migration
  def change
    create_table :heartrates do |t|

      t.timestamps null: false
    end
  end
end
