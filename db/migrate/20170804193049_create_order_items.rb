class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity, null:false, default: 1
      t.references :menu_item, foreign_key: true
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
