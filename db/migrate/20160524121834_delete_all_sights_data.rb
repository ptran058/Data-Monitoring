class DeleteAllSightsData < ActiveRecord::Migration
  def change
  	drop_table :sights
  end
end