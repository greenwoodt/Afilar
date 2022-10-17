class ChangeLocationCustomerTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :location, :address
  end
end
