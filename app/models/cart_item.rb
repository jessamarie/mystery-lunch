class CartItem < ApplicationRecord
  belongs_to :menu_item
  has_one :order_item
  belongs_to :cart

  # Commented code should be kept in a feature branch until ready,
  # and not pushed to `master`
  # def total_price
  #   product.price * quantity
  # end
end
