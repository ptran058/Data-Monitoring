class AddClientIdColumnToComplaint < ActiveRecord::Migration
  def change
    add_column :complaints, :client_id, :integer
  end
end
