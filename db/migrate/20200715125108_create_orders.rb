class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :delivery_address
      t.string :delivery_type
      t.string :payment_type
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :country
      t.integer :postal_code
      t.integer :phone
      t.timestamps null: false

    end
  end
end
