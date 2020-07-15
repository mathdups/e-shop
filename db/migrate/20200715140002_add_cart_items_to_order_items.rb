class AddCartItemsToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_items, :cart_item, foreign_key: true
  end
end
