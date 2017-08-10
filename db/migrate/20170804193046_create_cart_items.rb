class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.references :menu_item
      t.references :cart
      t.timestamps
    end
  end
end
