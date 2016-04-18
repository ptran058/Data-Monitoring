class CreateHeartrateTargets < ActiveRecord::Migration
  def change
    create_table :heartrate_targets do |t|

      t.timestamps null: false
    end
  end
end
