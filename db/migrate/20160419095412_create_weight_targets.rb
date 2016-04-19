class CreateWeightTargets < ActiveRecord::Migration
  def change
    create_table :weight_targets do |t|

      t.timestamps null: false
    end
  end
end
