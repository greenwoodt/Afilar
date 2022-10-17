class CreateAfiladors < ActiveRecord::Migration[7.0]
  def change
    create_table :afiladors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :photo
      t.integer :telephone
      t.string :address

      t.timestamps
    end
  end
end
