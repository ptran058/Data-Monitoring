class AddMissingColumns < ActiveRecord::Migration
  def change
    add_column :cholesterols, :client_id, :integer
    add_column :cholesterols, :ldl, :integer
    add_column :cholesterols, :hdl, :integer
    add_column :cholesterols, :triglycerides, :integer
    add_column :cholesterols, :activity_date, :datetime

    add_column :blood_pressures, :client_id, :integer
    add_column :blood_pressures, :sys, :integer
    add_column :blood_pressures, :dia, :integer
    add_column :blood_pressures, :activity_date, :datetime

    add_column :blood_pressure_targets, :client_id, :integer
    add_column :blood_pressure_targets, :sys, :integer
    add_column :blood_pressure_targets, :dia, :integer

    add_column :cholesterol_targets, :client_id, :integer
    add_column :cholesterol_targets, :ldl, :integer
    add_column :cholesterol_targets, :hdl, :integer

    add_column :heartrates, :client_id, :integer
    add_column :heartrates, :pulse, :integer
    add_column :heartrates, :activity_date, :datetime

    add_column :heartrate_targets, :client_id, :integer
    add_column :heartrate_targets, :pulse, :integer

    add_column :weight_targets, :client_id, :integer
    add_column :weight_targets, :weight, :integer
    add_column :weight_targets, :max_weight, :integer
    add_column :weight_targets, :min_weight, :integer
  end
end
