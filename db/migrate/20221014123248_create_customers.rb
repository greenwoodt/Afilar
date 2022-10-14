class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :business
      t.integer :telephone
      t.text :location
      t.string :photo

      t.timestamps
    end
  end
end
