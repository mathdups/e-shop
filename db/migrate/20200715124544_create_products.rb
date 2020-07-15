class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :short_description
      t.float :price, default: 0.0
      t.integer :stock, default: 0
      t.string :image_url
      t.timestamps null: false
    end
  end
end
