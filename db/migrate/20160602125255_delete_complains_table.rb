class DeleteComplainsTable < ActiveRecord::Migration
  def change
    drop_table :complains
  end
end
