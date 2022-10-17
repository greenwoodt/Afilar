class AddAddressCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :address, :string
  end
end
