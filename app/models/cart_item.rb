class CartItem < ApplicationRecord
  belongs_to :menu_item
  has_one :order_item
  belongs_to :cart

  # def total_price
  #   product.price * quantity
  # end
end
